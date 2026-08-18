---
type: session
title: Session 2026-08-18 — Governance-Struktur, Vollwartung & neue Entities
status: complete
created: 2026-08-18
updated: 2026-08-18
session: session-2026-08-18-teil-2
tags:
  - session
  - governance
  - wartung
  - qualitaetssicherung
  - entities
  - iba-kommunen
address: session-2026-08-18-002
---

# Session 2026-08-18 — Teil 2: Governance & Wartung

**Datum:** 2026-08-18 (Nachmittag/Abend)  
**Status:** ✅ Abgeschlossen  
**Vorgänger:** [[wiki/sessions/Session-2026-08-18-Final-Briefing.md|Teil 1 — Context-Automation]]

---

## 📋 Was gemacht wurde

### 1. IBA-Website online → Kommunen-Akquisition gestartet

www.initiative-bau-archiv.de ist live. Endnutzer können sich informieren
und sich als Pilotpartner bewerben.

Daraus entstand das Projekt **IBA-Kommunen-Akquisition** (alle 400 deutschen
Kommunen, Ziel: 10–20 Pilot-Kommunen bis 31.12.2026).

Erstellt nach dem 3-Ebenen-Modell:
- [[wiki/projects/IBA-Kommunen-Akquisition.md|Projekt]] — Strategie, Meilensteine, Risiken
- [[wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md|Workflow]] — 5 Phasen, Templates, Checklisten
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — 5 einfache TODOs

### 2. Governance-Struktur aufgebaut

Vier bindende Regeln, strukturiert in `.claude/governance/`:

| Regel | Inhalt |
|-------|--------|
| 01 | Sprachrichtlinie (Deutsch + englische Fachbegriffe) |
| 02 | Workflow-Organisation (Workflows in `wiki/workflows/`) |
| 03 | Projekt-Workflow-Action (3-Ebenen-Modell) |
| 04 | Wartungsroutine (tägliche Prüfung per Script) |

Zweischichtiges System: `.claude/governance/` für JARVIN-System-Regeln,
`wiki/meta/governance/` bleibt für Mark-OS-Business-Governance.

### 3. Vollwartung — 30 Fehler behoben

Ergebnis: [[wiki/meta/Wartungsbericht-2026-08-18.md|Wartungsbericht]]

- 25 defekte Links (durch Refactors und Archivierungen entstanden)
- 3 Platzhalter-Links, die den Obsidian-Graph verschmutzten
- 1 fehlendes Frontmatter
- 1 veralteter Session-Index

**Selbstkorrektur:** Die Kohärenz-Analyse vom Vormittag behauptete
„keine broken links (A/1.0)" — das war ungeprüft und falsch. Bewertung
auf C (3.0) korrigiert.

**Zweite Selbstkorrektur:** Auch die manuelle Wartung war unvollständig.
Sie meldete den Vault als sauber, das anschließend gebaute Script fand
19 weitere Befunde. Ursache: `wiki/sessions/` und mehrere Entities waren
nicht im Ad-hoc-Scope.

### 4. Prüf-Script gebaut

`.claude/scripts/vault-lint.sh` — 6 Checks, Exit-Code 0/1, ~15 Sekunden.

Prüft: defekte Links · Frontmatter · Orphans · Session-Index ·
Git-Hygiene · Projekt-Größen.

Ausgeschlossen gegen False Positives: Archive, Templates, Code-Blöcke,
Platzhalter-Muster.

### 5. Zwei neue Entities

**[[wiki/entities/Sparkasse-Berlin.md|Sparkasse Berlin]]**

Bei der Erstellung fielen zwei Dokumentationsprobleme auf:
- Die Konditionen (4,5 % / 1,5 % / 5 Jahre / 200–250k€) stehen an 16 Stellen
  im Vault, aber nicht im Protokoll des Termins. Keine schriftliche
  Bankbestätigung. → als „mündlich" gekennzeichnet
- Widerspruch: Protokoll sagt „keine weiche Finanzierungsbestätigung",
  andere Dokumente sprechen von „Pre-Approval". → klargestellt: keine Zusage

**[[wiki/entities/Günay Cakir.md|Günay Cakir]]** (privater Investor)

Erster konkreter Kandidat für Lösungsansatz 2 der EK-Lücke. Bisher hing
deren Auflösung allein an der E-Commerce-Akquise — jetzt gibt es einen
zweiten Weg. Volumen und Konditionen sind offen und als Fragen dokumentiert.

### 6. Erinnerungs-Mechanismus für offene Befunde

Vier Projektdateien überschreiten den Regel-03-Richtwert (393–575 statt
50–200 Zeilen). Bestandsschutz gilt — aber jede Datei hat jetzt einen
Callout-Block unter der H1, der beim nächsten Bearbeiten sichtbar wird.

Prinzip in Regel 04 verankert: **Offene Befunde gehören in die betroffene
Datei, nicht nur in einen Bericht.**

---

## 📊 Bilanz

| Kennzahl | Wert |
|----------|------|
| Commits | 8 |
| Neue Regeln | 2 (03, 04) |
| Neue Entities | 2 |
| Neue Projekte | 1 |
| Neue Workflows | 1 |
| Behobene Fehler | 30 |
| Neues Werkzeug | `vault-lint.sh` |

**Vault-Status bei Session-Ende:** Lint Exit 0 — sauber.

---

## 🎯 Offen für morgen

### Terminlich dringend

| Task | Deadline | Status |
|------|----------|--------|
| **IBA Phase 1** — Kontaktliste Top-50 | 2026-08-24 | 🔴 noch nicht begonnen |
| **Task 0c** — Gespräch Günay Cakir | 2026-08-31 | 🟡 neu |
| **Task 1a** — GmbH-Gründung | 2026-08-31 | ⏳ pending |
| **Task 2b** — Volksbank + Sparkasse Brandenburg | 2026-08-31 | ⏳ pending |

### Entscheidungen, die noch bei dir liegen

- **Befund A:** 4 Projekte über Regel-03-Richtwert → Empfehlung Bestandsschutz
- **Befund B:** identische Dateinamen in `entities/` und `projects/` →
  Empfehlung: belassen, immer mit vollem Pfad verlinken
- **DEC-2026-002:** Sparkasse Berlin als Hauptbank? (weiterhin offen)

### Aus der Wartung hervorgegangen

- Schriftliche Konditionsbestätigung der Sparkasse einholen
  (aktuell nur mündlich, an 16 Stellen als Fakt dokumentiert)

---

## 💡 Erkenntnis der Session

Zwei meiner eigenen Qualitätsaussagen mussten heute korrigiert werden —
beide waren Schätzungen, die wie Messungen formuliert waren.

Konsequenz: Regel 04 schreibt vor, dass Prüfungen ausschließlich über das
Script laufen. Ein reproduzierbares Werkzeug ist einer sorgfältigen
Absicht überlegen.

---

**Session-Status:** ✅ Abgeschlossen  
**Nächste Session:** 2026-08-19  
**Empfohlener Einstieg:** hot.md lesen, dann IBA Phase 1 starten
