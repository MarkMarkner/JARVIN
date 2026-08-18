#!/bin/bash
# ============================================================
# JARVIN Vault-Lint — Tägliche Wartungsprüfung
# ============================================================
# Zweck:  Reproduzierbare Prüfung der Vault-Integrität
# Regel:  .claude/governance/04-wartungsroutine.md
# Aufruf: bash .claude/scripts/vault-lint.sh
#
# Exit-Codes:
#   0 = Alles sauber
#   1 = Befunde vorhanden
#
# AUSGESCHLOSSEN von der Prüfung:
#   - wiki/meta/archive/     (historisch, tote Links erlaubt)
#   - wiki/meta/system-documentation/ (Spec mit Syntax-Beispielen)
#   - *TEMPLATE*             (Vorlagen mit Platzhaltern)
#   - Code-Blöcke und Code-Spans (Beispiele, keine echten Links)
#   - Platzhalter-Muster (XXX, YYYY, MONAT-JAHR, path/to/, Session-X)
# ============================================================

cd "$(dirname "$0")/../.." || exit 1

TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
BEFUNDE=0

echo "════════════════════════════════════════════════"
echo "  JARVIN Vault-Lint — $(date '+%Y-%m-%d %H:%M')"
echo "════════════════════════════════════════════════"
echo ""

# ------------------------------------------------------------
# Hilfsfunktion: Ist der Link ein Platzhalter?
# ------------------------------------------------------------
ist_platzhalter() {
  case "$1" in
    ""|*/|*"["*|*"]"*|"...") return 0;;
    *XXX*|*YYYY*|*MONAT-JAHR*|path/to/*) return 0;;
    Session-X|Session-Y|Session-Z|DEC-001|DEC-002) return 0;;
    Entity*|Concept*|Question*|Source\ [0-9]*|Person\ [0-9]*) return 0;;
    Target*|Link|Name|Page|Alias|Project|Source) return 0;;
    *) return 1;;
  esac
}

# ------------------------------------------------------------
# CHECK 1: Defekte Wikilinks
# ------------------------------------------------------------
echo "▸ Check 1: Defekte Wikilinks"

find wiki .claude -name "*.md" 2>/dev/null \
  | grep -v "/archive/" \
  | grep -v "/system-documentation/" \
  | grep -v "TEMPLATE" \
  > "$TMP/files.txt"

: > "$TMP/broken.txt"
while IFS= read -r f; do
  [ -f "$f" ] || continue
  # Code-Blöcke entfernen → Code-Spans entfernen → Links extrahieren
  awk '/^[[:space:]]*```/{blk=!blk; next} !blk' "$f" 2>/dev/null \
    | sed 's/`[^`]*`//g' \
    | grep -oE '\[\[[^]|#]+' 2>/dev/null \
    | sed 's/\[\[//' \
    > "$TMP/links.txt"

  while IFS= read -r link; do
    link=$(printf '%s' "$link" | sed 's/[[:space:]]*$//;s/\\$//')
    ist_platzhalter "$link" && continue
    [ -f "$link" ] && continue
    [ -f "$link.md" ] && continue
    base=$(basename "$link" .md)
    find . -name "$base.md" -not -path "./.git/*" 2>/dev/null | grep -q . && continue
    printf '%s|%s\n' "$f" "$link" >> "$TMP/broken.txt"
  done < "$TMP/links.txt"
done < "$TMP/files.txt"

N=$(wc -l < "$TMP/broken.txt" | tr -d ' ')
if [ "$N" -gt 0 ]; then
  while IFS='|' read -r file link; do
    echo "  ✗ $file → $link"
  done < "$TMP/broken.txt"
  BEFUNDE=$((BEFUNDE + N))
else
  echo "  ✓ Keine defekten Links"
fi
echo ""

# ------------------------------------------------------------
# CHECK 2: Fehlendes Frontmatter
# ------------------------------------------------------------
echo "▸ Check 2: Frontmatter-Vollständigkeit"

: > "$TMP/nofm.txt"
find wiki .claude -name "*.md" -print0 2>/dev/null | while IFS= read -r -d '' f; do
  head -1 "$f" | grep -q '^---$' || printf '%s\n' "$f" >> "$TMP/nofm.txt"
done

N=$(wc -l < "$TMP/nofm.txt" 2>/dev/null | tr -d ' ')
N=${N:-0}
if [ "$N" -gt 0 ]; then
  while IFS= read -r f; do echo "  ✗ $f"; done < "$TMP/nofm.txt"
  BEFUNDE=$((BEFUNDE + N))
else
  echo "  ✓ Alle Dateien haben Frontmatter"
fi
echo ""

# ------------------------------------------------------------
# CHECK 3: Orphan-Dateien
# ------------------------------------------------------------
echo "▸ Check 3: Orphan-Dateien"

: > "$TMP/orphans.txt"
find wiki -name "*.md" -print0 2>/dev/null | while IFS= read -r -d '' f; do
  base=$(basename "$f" .md)
  case "$base" in index|hot|log|overview|README) continue;; esac
  case "$f" in */archive/*) continue;; esac
  cnt=$(grep -rl "$base" --include="*.md" wiki/ .claude/ 2>/dev/null | grep -vc "^$f$")
  [ "$cnt" -eq 0 ] && printf '%s\n' "$f" >> "$TMP/orphans.txt"
done

N=$(wc -l < "$TMP/orphans.txt" 2>/dev/null | tr -d ' ')
N=${N:-0}
if [ "$N" -gt 0 ]; then
  while IFS= read -r f; do echo "  ✗ $f"; done < "$TMP/orphans.txt"
  BEFUNDE=$((BEFUNDE + N))
else
  echo "  ✓ Keine Orphans"
fi
echo ""

# ------------------------------------------------------------
# CHECK 4: Session-Index-Aktualität
# ------------------------------------------------------------
echo "▸ Check 4: Session-Index"

IDX="wiki/sessions/Session-SUMMARY-INDEX.md"
if [ -f "$IDX" ]; then
  N=0
  for f in wiki/sessions/Session-*.md; do
    b=$(basename "$f")
    case "$b" in *SUMMARY*) continue;; esac
    if ! grep -q "$b" "$IDX"; then
      echo "  ✗ Fehlt im Index: $b"
      N=$((N + 1))
    fi
  done
  if [ "$N" -eq 0 ]; then
    echo "  ✓ Index vollständig"
  else
    BEFUNDE=$((BEFUNDE + N))
  fi
else
  echo "  ✗ Index-Datei fehlt"
  BEFUNDE=$((BEFUNDE + 1))
fi
echo ""

# ------------------------------------------------------------
# CHECK 5: Git-Hygiene
# ------------------------------------------------------------
echo "▸ Check 5: Git-Status"

UNSTAGED_DEL=$(git status --short 2>/dev/null | grep -c "^ D")
UNPUSHED=$(git log origin/main..HEAD --oneline 2>/dev/null | wc -l | tr -d ' ')

if [ "$UNSTAGED_DEL" -gt 0 ]; then
  echo "  ✗ $UNSTAGED_DEL ungestagete Löschung(en) — Refactor unvollständig?"
  BEFUNDE=$((BEFUNDE + 1))
fi
if [ "$UNPUSHED" -gt 0 ]; then
  echo "  ⚠ $UNPUSHED ungepushte Commit(s)"
  BEFUNDE=$((BEFUNDE + 1))
fi
[ "$UNSTAGED_DEL" -eq 0 ] && [ "$UNPUSHED" -eq 0 ] && echo "  ✓ Git sauber"
echo ""

# ------------------------------------------------------------
# CHECK 6: Regel-Konformität (Projekt-Größen nach Regel 03)
# ------------------------------------------------------------
echo "▸ Check 6: Projekt-Größen (Regel 03: 50-200 Zeilen)"

N=0
for f in wiki/projects/*.md; do
  [ -f "$f" ] || continue
  case "$(basename "$f")" in index.md) continue;; esac
  z=$(wc -l < "$f" | tr -d ' ')
  if [ "$z" -gt 250 ]; then
    echo "  ⚠ $(basename "$f"): $z Zeilen (Richtwert 50-200)"
    N=$((N + 1))
  fi
done
if [ "$N" -eq 0 ]; then
  echo "  ✓ Alle Projekte im Richtwert"
else
  echo "  → Bestandsschutz aktiv, kein Handlungsbedarf (siehe Wartungsbericht Befund A)"
fi
echo ""

# ------------------------------------------------------------
# KENNZAHLEN
# ------------------------------------------------------------
echo "▸ Kennzahlen"
echo "  Dateien:   $(find wiki .claude -name '*.md' 2>/dev/null | wc -l | tr -d ' ')"
echo "  Wikilinks: $(grep -rhoE '\[\[[^]|]+' --include='*.md' wiki/ .claude/ 2>/dev/null | sort -u | wc -l | tr -d ' ')"
echo "  Sessions:  $(ls wiki/sessions/Session-*.md 2>/dev/null | grep -vc SUMMARY)"
echo "  Größe:     $(du -sh wiki/ 2>/dev/null | cut -f1)"
echo ""

# ------------------------------------------------------------
# ERGEBNIS
# ------------------------------------------------------------
echo "════════════════════════════════════════════════"
if [ "$BEFUNDE" -eq 0 ]; then
  echo "  ✅ VAULT SAUBER — keine Befunde"
  echo "════════════════════════════════════════════════"
  exit 0
else
  echo "  ⚠️  $BEFUNDE BEFUND(E) — Aktion erforderlich"
  echo "════════════════════════════════════════════════"
  exit 1
fi
