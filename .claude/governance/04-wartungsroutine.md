---
type: rule
title: Wartungsroutine — Tägliche Vault-Integritätsprüfung
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - governance
  - rule
  - wartung
  - qualitaetssicherung
  - automation
address: rule-wartung-001
---

# Wartungsroutine

**Gültig ab:** 2026-08-18  
**Status:** 🟢 **BINDEND**  
**Frequenz:** Täglich, einmal  
**Werkzeug:** `.claude/scripts/vault-lint.sh`

---

## 📌 KERNREGEL

**Die Wartungsprüfung läuft einmal täglich über ein Script — nicht ad-hoc.**

```bash
bash .claude/scripts/vault-lint.sh
```

Exit-Code `0` = sauber · Exit-Code `1` = Befunde vorhanden

---

## ⚠️ WARUM EIN SCRIPT UND KEINE AD-HOC-PRÜFUNG

Am 2026-08-18 wurde eine manuelle Wartung durchgeführt. Sie fand 6 defekte
Links und meldete den Vault als sauber.

Das anschließend gebaute Script fand **19 weitere Befunde in denselben
Kategorien** — die manuelle Prüfung hatte `wiki/sessions/` und mehrere
Entity-Dateien schlicht nicht im Scope.

**Lehre:** Ad-hoc-Prüfungen sind unvollständig und nicht reproduzierbar.
Sie erzeugen falsche Sicherheit. Jede Prüfung läuft über das Script.

---

## 🔄 TÄGLICHER ABLAUF

### Schritt 1 — Ausführen

```bash
cd /Users/ingmarkner/JARVIN
bash .claude/scripts/vault-lint.sh
```

### Schritt 2 — Bewerten

| Ergebnis | Bedeutung | Aktion |
|----------|-----------|--------|
| ✅ Exit 0 | Vault sauber | Keine. Fertig. |
| ⚠️ Exit 1 | Befunde vorhanden | Weiter zu Schritt 3 |

### Schritt 3 — Beheben

Befunde nach Kategorie abarbeiten:

| Befund | Standard-Behebung |
|--------|-------------------|
| **Defekter Link** | Zielpfad prüfen (umbenannt? archiviert?) → Link korrigieren |
| **Fehlendes Frontmatter** | YAML-Block ergänzen (type, title, status, created, updated, tags, address) |
| **Orphan** | Verlinken (in `index.md`, `hot.md` oder passendem Projekt) oder archivieren |
| **Session fehlt im Index** | Eintrag in `Session-SUMMARY-INDEX.md` + Zähler anpassen |
| **Ungestagete Löschung** | `git add -A` — Refactor war unvollständig |
| **Ungepushter Commit** | `git push origin main` |
| **Projekt zu groß** | Bestandsschutz — nur bei ohnehin anstehender Überarbeitung refactoren |

### Schritt 4 — Erneut prüfen

```bash
bash .claude/scripts/vault-lint.sh
```

Erst wenn Exit-Code `0`: committen.

### Schritt 5 — Dokumentieren (nur bei Befunden)

Bei behobenen Befunden Eintrag in `wiki/log.md`:

```markdown
### op-wartung-YYYY-MM-DD-001 | maintenance
**Typ**: Tägliche Wartungsprüfung
**Ergebnis**: X Befund(e) behoben

**Behoben:**
- [Kategorie]: [Was] → [Wie]

**Status**: ✅ Vault sauber (Exit 0)
```

Bei Exit-Code `0` ohne Befunde: **keine Dokumentation nötig.**
Das Log soll Ereignisse festhalten, keine Routine-Leerläufe.

---

## 🔍 WAS DAS SCRIPT PRÜFT

| # | Check | Was gefunden wird |
|---|-------|-------------------|
| 1 | **Defekte Wikilinks** | Links auf nicht existierende Dateien |
| 2 | **Frontmatter** | Dateien ohne YAML-Kopf |
| 3 | **Orphans** | Dateien, auf die niemand verlinkt |
| 4 | **Session-Index** | Sessions, die im Index fehlen |
| 5 | **Git-Hygiene** | Ungestagete Löschungen, ungepushte Commits |
| 6 | **Projekt-Größen** | Projekte über Richtwert (Regel 03) |

### Bewusst ausgeschlossen

Damit das Script keine False Positives produziert (die dazu führen, dass
es ignoriert wird), sind ausgenommen:

- `wiki/meta/archive/` — historische Dokumente, tote Links erlaubt
- `wiki/meta/system-documentation/` — Spec mit Syntax-Beispielen
- `*TEMPLATE*` — Vorlagen mit Platzhaltern
- Inhalte in Code-Blöcken (```) und Code-Spans (`)
- Platzhalter-Muster: `XXX`, `YYYY`, `MONAT-JAHR`, `path/to/`, `Session-X`, `Entity Name`

---

## 🛡️ PRÄVENTION — Die eigentliche Regel

Das Script findet Fehler. Besser ist, sie nicht zu erzeugen.

### Bei jeder Umbenennung oder Verschiebung

```bash
# 1. VOR dem Umbenennen: alle Referenzen finden
grep -rn "alter-dateiname" --include="*.md" .

# 2. Datei verschieben/umbenennen
mv alt.md neu.md

# 3. Alle gefundenen Referenzen aktualisieren

# 4. Prüfen
bash .claude/scripts/vault-lint.sh

# 5. Erst dann committen
```

**Diese vier Schritte hätten alle 25 Link-Fehler vom 2026-08-18 verhindert.**

### Bei Session-Ende

1. Session-Datei erstellen
2. Eintrag in `Session-SUMMARY-INDEX.md` + Zähler
3. `bash .claude/scripts/vault-lint.sh`
4. Bei Exit 0: committen und pushen

---

## 📅 FREQUENZ & AUSLÖSER

**Täglich einmal** — konkret bei:

| Auslöser | Wann |
|----------|------|
| **Session-Start** | Erste Interaktion des Tages mit JARVIN |
| **Session-Ende** | Vor dem finalen Commit |
| **Nach Refactor** | Immer, unabhängig vom Tageslauf |

**Wenn an einem Tag nicht mit JARVIN gearbeitet wird, entfällt die Prüfung.**
Ohne Änderungen entstehen keine neuen Fehler — eine Prüfung wäre Leerlauf.

Die Prüfung dauert ca. 10–20 Sekunden.

---

## 🚫 WAS NICHT ZUR WARTUNG GEHÖRT

Klare Abgrenzung, damit die Routine schlank bleibt:

| Nicht Teil der Wartung | Gehört zu |
|------------------------|-----------|
| Inhaltliche Aktualisierung von Projekten | Normale Projektarbeit |
| Neue Entities anlegen | Session-Arbeit |
| Strukturentscheidungen (z.B. Ordner-Refactor) | Explizite Entscheidung durch Mark |
| Projekte auf Regel-03-Größe kürzen | Bei inhaltlicher Überarbeitung, nicht als Selbstzweck |

**Wartung stellt Integrität her — sie verändert keine Inhalte.**

---

## 📊 ERWARTUNGSWERTE

Nach der Bereinigung vom 2026-08-18:

```
Defekte Links:        0
Ohne Frontmatter:     0
Orphans:              0
Session-Index:        vollständig
Git:                  sauber
Projekt-Größen:       4 über Richtwert (Bestandsschutz)
```

**Ein Befund bedeutet: seit der letzten Prüfung ist etwas passiert.**
Meist ein Refactor ohne nachgezogene Links.

---

## 🔗 VERKNÜPFUNGEN

- Script: `.claude/scripts/vault-lint.sh`
- [[wiki/meta/Wartungsbericht-2026-08-18.md|Wartungsbericht 2026-08-18]] (Erstbereinigung)
- [[.claude/governance/rules-index.md|Rules Index]]
- [[.claude/governance/03-project-workflow-action-rule.md|Regel 03]] (Projekt-Größen)

---

**Status:** 🟢 BINDEND  
**Gültig ab:** 2026-08-18  
**Owner:** Mark Markner + Claude  
**Nächste Regel-Überprüfung:** 2026-09-18
