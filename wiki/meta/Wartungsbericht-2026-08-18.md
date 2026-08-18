---
type: meta
title: Wartungsbericht 2026-08-18 — Vollumfängliche Vault-Wartung
status: complete
created: 2026-08-18
updated: 2026-08-18
tags:
  - wartung
  - audit
  - qualitaetssicherung
  - lint
address: wartung-2026-08-18-001
---

# Wartungsbericht 2026-08-18

**Umfang:** Vollständige Vault-Wartung (88 Markdown-Dateien)  
**Durchgeführt:** 2026-08-18  
**Methode:** Automatisierte Prüfung + manuelle Verifikation

---

## ⚠️ WICHTIGE KORREKTUR EINER FRÜHEREN AUSSAGE

Die Kohärenz-Analyse vom selben Tag (`.claude/system-coherence-analysis.md`)
bewertete die **Verlinkung mit "A (1.0) — keine broken links"**.

**Diese Aussage war nicht verifiziert und falsch.**

Die tatsächliche Prüfung ergab **6 defekte Links** in produktiven Dateien.
Die Bewertung basierte auf Annahme, nicht auf Messung. Die Gesamtnote
"A- (1.3)" ist daher ebenfalls als ungeprüfte Schätzung zu betrachten.

**Lehre:** Qualitätsaussagen nur nach tatsächlicher Messung treffen.

---

## ✅ BEHOBENE FEHLER

### 1. Defekte Links (6 Stück)

| Datei | Alter Link | Neuer Link |
|-------|-----------|------------|
| `wiki/projects/IBA-Kommunen-Akquisition.md` | `.claude/iba-kommunen-kontakt-workflow.md` | `wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md` |
| `.claude/governance/02-...` | `.claude/sprachrichtlinie.md` | `.claude/governance/01-sprachrichtlinie.md` |
| `wiki/hot.md` | `wiki/meta/Sparkasse-TODO-2026-08-17.md` | `wiki/meta/archive/SPARKASSE-TODO-ARCHIVE.md` |
| `wiki/hot.md` | `wiki/meta/Session-2-TODO.md` | `wiki/meta/archive/SESSION-2-TODO-ARCHIVE.md` |
| `wiki/index.md` | `wiki/meta/JARVEN-Roadmap.md` | `wiki/meta/JARVEN-Roadmap-Archive.md` |
| `.claude/context-optimization-strategy.md` | `wiki/sessions/Session-3.md` | `wiki/sessions/Session-3-2026-08-17-...md` |

**Ursache:** Refactors und Archivierungen ohne nachgezogene Link-Aktualisierung.

### 2. Platzhalter-Links als echte Wikilinks

3 hypothetische Beispiel-Links (`E-Commerce-Onboarding-Workflow`,
`Mark-OS-Integration-Workflow`, `wiki/workflows/...`) erschienen als echte
Wikilinks und erzeugten "unresolved links" im Obsidian-Graph.
→ In Code-Spans umgewandelt.

### 3. Fehlendes Frontmatter

`.claude/vault-session-config.md` hatte kein YAML-Frontmatter.
→ Ergänzt (type, title, status, created, updated, tags, address).

### 4. Veralteter Session-Index

Der Session-Summary-Index listete 11 Sessions, es existieren aber 13.
Die beiden Sessions vom 2026-08-18 fehlten.
→ Beide ergänzt, Zähler korrigiert.

### 5. Git-Inkonsistenz

Die drei alten Regel-Dateien in `.claude/` waren nach dem Governance-Refactor
als "deleted" im Working Tree, aber nicht committed.
→ Staging bereinigt.

---

## 📋 OFFENE STRUKTURELLE BEFUNDE

Diese sind **keine Fehler**, aber Entscheidungen die Mark treffen sollte.

### Befund A: Projekte verletzen die neue Regel 03

Die neue Regel `03-project-workflow-action-rule.md` gibt für Projekt-Dateien
**50–200 Zeilen** vor. Die bestehenden Projekte liegen deutlich darüber:

| Projekt | Zeilen | Regel-konform? |
|---------|--------|----------------|
| `IBA-Kommunen-Akquisition.md` | ~170 | ✅ Ja (heute konsolidiert) |
| `Mark-OS.md` | 393 | ❌ Nein |
| `IBA-Initiative-Bau-Archiv.md` | 498 | ❌ Nein |
| `E-Commerce-Akquisition-2026.md` | 539 | ❌ Nein |
| `Fix-und-Flip-Masterclass-2026-2027.md` | 575 | ❌ Nein |

**Bedeutung:** Die Regel wurde heute erstellt, die Projekte sind älter.
Vier Projekte enthalten operative Details, die nach der Regel in einen
Workflow gehören würden.

**Optionen:**
1. Projekte nach Regel 03 refactoren (je ~1-2h Aufwand, 4 Projekte)
2. Regel 03 lockern (Größenvorgabe als Richtwert statt Vorgabe)
3. Bestandsschutz: Regel gilt nur für neue Projekte

**Empfehlung:** Option 3 kurzfristig, Option 1 bei nächster inhaltlicher
Überarbeitung des jeweiligen Projekts. Kein Refactor-Selbstzweck.

**✅ Erinnerung eingerichtet (2026-08-18):** Alle vier Projektdateien haben
jetzt einen Callout-Block direkt unter der H1-Überschrift. Wer an der Datei
arbeitet, sieht den Hinweis unmittelbar. Mechanismus dokumentiert in
[[.claude/governance/04-wartungsroutine.md|Regel 04]].

### Befund B: Gleiche Dateinamen in entities/ und projects/

Vier Namen existieren doppelt:
- `E-Commerce-Akquisition-2026.md`
- `Fix-und-Flip-Masterclass-2026-2027.md`
- `IBA-Initiative-Bau-Archiv.md`
- `Mark-OS.md`

**Das ist inhaltlich korrekt** (Entity = Was ist es, Project = Wie führen wir
es durch), aber die identischen Dateinamen sind in Obsidian problematisch:
Ein Wikilink `[[Mark-OS]]` ohne Pfad ist mehrdeutig.

**Optionen:**
1. Entities umbenennen mit Präfix (`Entity-Mark-OS.md`)
2. Projekte umbenennen mit Suffix (`Mark-OS-Projekt.md`)
3. Belassen, aber Regel: immer mit vollem Pfad verlinken

**Empfehlung:** Option 3 (kein Umbenennen nötig, da alle bestehenden Links
bereits vollständige Pfade verwenden). Als Konvention in Regel 01 ergänzen.

### Befund C: Orphan-Dateien

| Datei | Status |
|-------|--------|
| `wiki/meta/JARVEN-Roadmap-Archive.md` | ✅ Behoben (jetzt in index.md verlinkt) |
| `wiki/sessions/Session-2026-08-18-Final-Briefing.md` | ✅ Behoben (jetzt im Session-Index) |

---

## 📊 VAULT-KENNZAHLEN (gemessen)

| Metrik | Wert |
|--------|------|
| Markdown-Dateien gesamt | 88 |
| Davon in `wiki/` | ~78 |
| Davon in `.claude/` | ~10 |
| Größe `wiki/` | 828 KB |
| Größe `.claude/` | 132 KB |
| Einzigartige Wikilinks | 262 |
| Defekte Links (produktiv) | 0 (vorher: 6) |
| Dateien ohne Frontmatter | 0 (vorher: 1) |
| Orphan-Dateien | 0 (vorher: 2) |
| Sessions dokumentiert | 13 |
| Sessions im Index | 13 (vorher: 11) |

**Type-Verteilung:**
- `meta`: 52 · `session`: 14 · `entity`: 9 · `project`: 7
- `workflow`: 4 · `rule`: 2 · `source`: 2 · `concept`: 2 · sonstige: 6

---

## 🔴 NACHTRAG: Die manuelle Wartung war unvollständig

Nach Erstellung des Prüf-Scripts `.claude/scripts/vault-lint.sh` zeigte sich:

**Die manuelle Prüfung hatte 19 weitere Befunde übersehen.**

Ursache: Der Ad-hoc-Scan hatte `wiki/sessions/` und mehrere Entity-Dateien
nicht im Scope. Gefunden wurden zusätzlich:

| Datei | Defekte Links | Art |
|-------|---------------|-----|
| `wiki/entities/Mark Markner.md` | 6 | Alte Namensformate (`IBA - Initiative Bau Archiv GmbH` statt `IBA-Initiative-Bau-Archiv.md`) |
| `wiki/entities/Markner Holding GmbH.md` | 5 | dito |
| `wiki/entities/Michaela Markner.md` | 1 | dito |
| `wiki/sessions/Session-2026-08-17-Abschluss.md` | 2 | Archivierte TODO-Listen |
| `wiki/sessions/Session-1-2026-08-14-Abschluss.md` | 2 | Roadmap + Lint-Results |
| `wiki/meta/JARVEN-Roadmap-Archive.md` | 2 | dito |
| `wiki/sessions/Session-Meeting-...Sparkasse-Ullrich.md` | 1 | Entity existiert nicht |

**Alle 19 behoben.** Verifiziert durch Script (Exit-Code 0).

**Konsequenz:** Regel 04 (Wartungsroutine) schreibt vor, dass Prüfungen
ausschließlich über das Script laufen — nie ad-hoc.

### ✅ Behoben: Fehlende Entity „Sparkasse Berlin"

`Sparkasse Berlin` wurde verlinkt, existierte aber nicht als Entity.

**Am 2026-08-18 angelegt:** [[wiki/entities/Sparkasse-Berlin.md|Sparkasse Berlin]]

Bei der Erstellung fielen zwei Dokumentationsprobleme auf:

**1. Konditionen ohne Primärquelle**  
Die Konditionen (4,5 % Zins, 1,5 % Tilgung, 5 Jahre, 200–250k€) stehen an
16 Stellen im Vault, aber **nicht im Protokoll des Termins vom 2026-08-17**.
Sie stammen aus der Session-Nachbereitung. Eine schriftliche Bestätigung
der Bank liegt nicht vor. → In der Entity als „mündlich" gekennzeichnet,
schriftliche Bestätigung als offene Aufgabe aufgenommen.

**2. Widersprüchliche Aussagen zur Verbindlichkeit**  
- Protokoll: *„Weiche Finanzierungsbestätigung: NEIN, wird es nicht geben"*
- Andere Dokumente: sprechen von *„Pre-Approval 200–250k€"*

Es gibt **keine Zusage**. Die Bank hat Interesse signalisiert und einen
Rahmen genannt. → In der Entity klargestellt.

---

## 🔧 EMPFOHLENE WARTUNGSROUTINE

Damit diese Fehlerklassen nicht wieder auftreten:

**Nach jedem Refactor / jeder Umbenennung:**
1. `grep -r "alter-dateiname" --include="*.md" .` — alle Referenzen finden
2. Alle Treffer aktualisieren
3. Erst dann committen

**Bei Session-Ende:**
1. Neue Session in `Session-SUMMARY-INDEX.md` eintragen
2. Zähler in der Statistik-Tabelle anpassen
3. `git status` prüfen — keine ungestageten Löschungen

**Monatlich:**
1. Link-Validierung laufen lassen
2. Orphan-Check
3. Frontmatter-Vollständigkeit

---

## 🔗 VERKNÜPFUNGEN

- [[.claude/system-coherence-analysis.md|Kohärenz-Analyse]] (enthält korrigierte Aussage)
- [[.claude/governance/rules-index.md|Governance Rules Index]]
- [[wiki/log.md|Operation Log]]

---

**Status:** ✅ Wartung abgeschlossen, verifiziert durch Script (Exit 0)  
**Behobene Fehler:** 30 (25 Links + 3 Platzhalter + 1 Frontmatter + 1 Index)  
**Offene Entscheidungen:** 3 (Befund A + B + Entity "Sparkasse Berlin")  
**Neue Regel:** [[.claude/governance/04-wartungsroutine.md|Regel 04 — Wartungsroutine]]  
**Neues Werkzeug:** `.claude/scripts/vault-lint.sh`  
**Nächste Wartung:** täglich automatisch (Regel 04)
