---
type: meta
title: Mark OS Governance — Workflows & Decision Frameworks
status: active
created: 2026-08-17
updated: 2026-08-17
tags:
  - meta
  - governance
  - mark-os
  - workflows
  - decision-making
address: meta-mark-os-governance-001
---

# Mark OS Governance — Workflows & Decision Frameworks

**Zweck:** Definiert die formalen Governance Workflows für alle 3 Phasen von Mark OS

**Scope:** Wie werden Entscheidungen getroffen? Wie werden Automationen genehmigt? Wie lernen wir?

**Verlinkt zu:**
- [[wiki/meta/decision-log.md|Decision Log]] — Entscheidungs-Registry
- [[wiki/meta/automations-registry.md|Automations Registry]] — Automations-Registry
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Impact auf Tasks
- [[wiki/projects/Mark-OS.md|Mark OS Projekt]] — Gesamtstrategie

---

## 🎯 MARK OS PHASEN

### Phase 1: ENTSCHEIDUNGS-FREIGABE (Aug-Sept 2026)
**Ziel:** System stabilisieren, Vertrauen aufbauen
**Charakteristik:** Häufige Entscheidungen, neue Struktur
**Owner:** Mark (Entscheidungen), Claude (Struktur & Dokumentation)

### Phase 2: DECISION-REVIEW & EXECUTION (Sept 2026+)
**Ziel:** Von Entscheidungen lernen, Automationen vorbereiten
**Charakteristik:** Regelmäßige Reviews, erste Automationen live
**Owner:** Mark (Strategy), Claude (Umsetzung & Analysis)

### Phase 3: AUTOMATION SCALE (Jan 2027+)
**Ziel:** Vollautomatisierung schlüsselbereiche, Cockpit live
**Charakteristik:** Viele Automationen, minimale manuelle Arbeit
**Owner:** Mark (Oversight), Claude (Automation & Monitoring)

---

## 📋 PHASE 1: ENTSCHEIDUNGS-FREIGABE WORKFLOW

**Zeitraum:** Aug-Sept 2026
**Status:** 🟡 **LIVE (Läuft jetzt)**
**Fokus:** Governance strukturieren, Mark's strategische Entscheidungen dokumentieren

### Der Workflow

#### **Schritt 1: ANALYSE (Claude)**
Claude analysiert eine strategische Situation:
- Kontext verstehen
- Optionen identifizieren
- Risiken/Chancen bewerten
- Data sammeln

**Beispiel:**
```
Situation: "Sollen wir die Markner Holding als GmbH oder Privatperson strukturieren?"
Claude analysiert:
- Steuerliche Implikationen
- Haftungsschutz
- Kreditgesetz-Anforderungen
- Timing & Kosten
```

---

#### **Schritt 2: EMPFEHLUNG (Claude)**
Claude gibt eine klare Empfehlung mit Rationale:
- "Empfehlung: JA — GmbH wird gegründet"
- Rationale: Steuerliche Vorteile + Haftungsschutz + Kreditgesetz-Compliance
- Alternative betrachtet: Privatperson (einfacher, aber Nachteile überwiegen)

**Wichtig:** Claude empfiehlt, aber trifft KEINE ENTSCHEIDUNG

---

#### **Schritt 3: ENTSCHEIDUNG (Mark) 🔴 CRITICAL**
**Mark trifft die finale Entscheidung** — Claude ist NICHT Entscheidungsträger!

Mark kann:
- ✅ JA sagen (Empfehlung folgen)
- ❌ NEIN sagen (Empfehlung ablehnen, Alternative wählen)
- ⚖️ CONDITIONAL sagen (Mit Bedingungen)

**Regel:** Alle strategischen Entscheidungen (Holding-Level & höher) müssen von Mark kommen

**Beispiel:**
```
Claude: "Empfehlung: GmbH"
Mark: "JA, machen wir GmbH"
```

---

#### **Schritt 4: DOKUMENTATION (Claude)**
Entscheidung wird dokumentiert an 3 Orten:

**1. decision-log.md** — Zentrale Registry
```
DEC-2026-001: GmbH-Gründung ja/nein?
Status: ✅ ENTSCHIEDEN
Entscheidung: JA — GmbH wird gegründet
```

**2. Detaillierte Datei** (wiki/meta/decisions/DEC-2026-001.md)
```
Vollständige Rationale, Optionen, Impact, linked Entities
```

**3. Master-Action-Items** — Tasks updaten
```
Task 1a: GmbH-Gründung (praktische Umsetzung)
Deadline: 2026-08-31
```

---

#### **Schritt 5: UMSETZUNG**
Tasks werden gestartet basierend auf Entscheidung:
- Task Ownership klar
- Deadlines gesetzt
- Abhängigkeiten dokumentiert
- Progress tracked

---

### Rollen & Verantwortlichkeiten (Phase 1)

| Rolle | Verantwortung | Autorität |
|-------|---------------|-----------|
| **Mark Markner** | Trifft strategische Entscheidungen | 100% |
| **Claude** | Analysiert, empfiehlt, dokumentiert | Advisory |
| **Process** | Governance-Workflows durchsetzen | Enforcement |

---

### Regeln (Phase 1)

**Regel 1:** Alle strategischen Entscheidungen (> Holding-Level) müssen dokumentiert sein
- In decision-log.md
- Mit Rationale, Optionen, Ergebnis

**Regel 2:** Mark ist IMMER der Entscheidungsträger
- Claude kann empfehlen, aber nicht entscheiden
- Mark gibt finale Freigabe

**Regel 3:** Entscheidungen werden dokumentiert BEVOR Tasks starten
- Nicht: Tasks starten → später Entscheidung dokumentieren
- Sondern: Entscheidung dokumentieren → Tasks starten

**Regel 4:** Entscheidungsrationale wird gespeichert (für Phase 2 Learnings)
- "Warum hat Mark das so entschieden?"
- Learnings für Future Decisions

---

## 📋 PHASE 2: DECISION-REVIEW PROZESS

**Zeitraum:** Sept 2026+ (monatlich)
**Status:** ⏳ **READY (Startet im Sept)**
**Fokus:** Von Entscheidungen lernen, Patterns identifizieren, Automationen vorbereiten

### Der Workflow

#### **Schritt 1: SAMMELN**
Claude sammelt alle Entscheidungen des letzten Monats:
```
August 2026:
- DEC-2026-001: GmbH? → JA
- DEC-2026-002: Sparkasse? → JA
- DEC-2026-003: E-Commerce Priority? → JA
```

---

#### **Schritt 2: REVIEW (Monatlich, 1. Montag)**

Fragen pro Entscheidung:
1. **War die Entscheidung richtig?** (Ja/Nein/Noch unklar)
2. **Was ist seitdem passiert?** (Ergebnisse, Learnings)
3. **Welche Patterns sehen wir?** (Marks Entscheidungs-Stil)

**Beispiel:**
```
DEC-2026-001 (GmbH) Review:
Q1: War die Entscheidung richtig?
A: Ja. GmbH ist gegründet, Kreditgesetz ist erfüllt, erste Verträge möglich.

Q2: Was ist seitdem passiert?
A: Schnelle Gründung ermöglichte Sparkasse-Kreditvergabe 2 Wochen früher.

Q3: Welche Patterns?
A: Mark trifft Entscheidungen schnell + vertraut auf Grundlagen.
   Diese Schnelligkeit + Vertrauen führt zu besseren Ergebnissen.
```

---

#### **Schritt 3: DOKUMENTATION (Claude)**
Review-Notizen werden in decision-log.md dokumentiert:

```
DEC-2026-001: GmbH-Gründung
...
Review Notes (Phase 2):
  [Sept 2026]: "Ja, war richtig. Gründung ermöglichte Kreditvergabe."
  [Okt 2026]: "Ja, war richtig. Haftungsschutz wichtig geworden."
  [Learnings]: "Schnelle Strukturentscheidungen → positive Results"
```

---

#### **Schritt 4: PATTERN IDENTIFICATION**

Claude identifiziert Patterns in Marks Entscheidungen:
- "Mark entscheidet immer schnell (< 1 Woche) → gut oder schlecht?"
- "Mark vertraut auf Grundlagen statt Perfektionismus → warum funktioniert das?"
- "Mark delegiert operativ, behält strategisch → smart."

**Verwendung für Phase 3:**
- Automationen sollten Marks Entscheidungs-Stil "unterstützen", nicht "ändern"
- Z.B. Automationen sollten OPTIONEN präsentieren, nicht ERZWINGEN

---

### Rollen & Verantwortlichkeiten (Phase 2)

| Rolle | Verantwortung | Autorität |
|-------|---------------|-----------|
| **Mark Markner** | Nimmt an Monatlichen Reviews teil, gibt Feedback | 100% |
| **Claude** | Sammelt Daten, analysiert Patterns, dokumentiert Learnings | Advisory |
| **Process** | Monatliche Review-Cycle durchsetzen | Enforcement |

---

### Review Schedule (Phase 2)

**Monatlich:** Jeden 1. Montag des Monats
- Sept 2026: 2. Sept (Erste Review)
- Okt 2026: 7. Okt
- Nov 2026: 4. Nov
- Dez 2026: 2. Dez
- etc.

---

## 📋 PHASE 3: AUTOMATIONS-FREIGABE PROZESS

**Zeitraum:** Jan 2027+ (pro Automation)
**Status:** ⏳ **READY (Startet im Jan)**
**Fokus:** Automationen testen & sicher deployen, Cockpit live

### Der Workflow (Pro Automation)

#### **Schritt 1: SPEZIFIKATION (Claude)**
Automation wird spezifiziert:
- Input Schema definieren
- Output Schema definieren
- Dependencies dokumentieren
- Test-Kriterien definieren

**Beispiel (AUTO-001: Angebotsprüfung)**
```
Input: { marktwert_eur, renovierungskosten_eur, verkaufspreis_target, ... }
Output: { go_nogo, gewinnmarge_eur, roi_percent, confidence_level, ... }
Dependencies: Fix-und-Flip Projekt, Sparkasse Rates, ...
```

---

#### **Schritt 2: ENTWICKLUNG (Claude)**
Automation wird gebaut basierend auf Specs:
- Code/Logic schreiben
- Input-Validierung implementieren
- Output-Validierung implementieren
- Error-Handling implementieren

---

#### **Schritt 3: TEST-PLAN (Claude)**
Test-Plan wird definiert und durchgeführt:
- Unit Tests (einzelne Komponenten)
- Integration Tests (mit echten Daten)
- Comparison Tests (Manual vs Automation)
- Edge Cases testen

**Beispiel (AUTO-001):**
```
Test 1: 10 echte Fix-und-Flip Kandidaten
  → Manual Analyse vs Automation vergleichen
  → Ergebnisse sollten > 95% Match sein

Test 2: Edge Cases
  → Sehr hohe Renovierungskosten
  → Sehr niedrige Verkaufspreise
  → etc.

Test 3: Performance
  → Automation sollte < 5 Sekunden brauchen
  → Kann 100 Kandidaten/Stunde verarbeiten
```

---

#### **Schritt 4: MARK GENEHMIGUNG 🔴 CRITICAL**
**Mark genehmigt oder lehnt ab** nach Reviewed Test-Results

Mark muss sehen:
- Test-Ergebnisse
- Comparison vs Manual
- Performance Metrics
- Risk Assessment

Mark entscheidet:
- ✅ Approved → Gehe zu Deployment
- ❌ Rejected → Zurück zu Entwicklung
- ⚖️ Conditional → Mit Bedingungen genehmigt

---

#### **Schritt 5: DEPLOYMENT**
Automation wird deployed zu Production:
- Aktiv auf echten Daten
- Monitored für Fehler
- Logging aktiviert

---

#### **Schritt 6: MONITORING (2 Wochen)**
Automation wird täglich überwacht:
- Läuft die Automation korrekt?
- Gibt es Fehler?
- Ergebnisse plausibel?
- Performance okay?

**2-Wochen Monitoring Period:**
- Täglich Checks
- Bei Problemen: Sofort Anpassung oder Rollback

---

#### **Schritt 7: STATUS UPDATE**
Nach erfolgreicher 2-Wochen-Periode:
- automations-registry.md updaten
  ```
  Status: 🟢 LIVE (seit 15. Okt)
  ```
- Learnings dokumentieren
- Nächste Automation in Pipeline starten

---

### Rollen & Verantwortlichkeiten (Phase 3)

| Rolle | Verantwortung | Autorität |
|-------|---------------|-----------|
| **Mark Markner** | Genehmigt Deployments, überwacht Ergebnisse | 100% |
| **Claude** | Spezifiziert, entwickelt, testet, deployed, monitored | Operational |
| **Process** | Freigabe-Workflows durchsetzen | Enforcement |

---

### Automations Roadmap (Phase 3)

```
2026-Q4:
├─ AUTO-001: Angebotsprüfung (Okt 2026) ← FIRST
└─ AUTO-002: Performance Tracking (Nov 2026)

2027-Q1:
├─ AUTO-003: Cashflow Planning (Jan 2027)
└─ AUTO-004: Risiko-Monitoring (Feb 2027)

2027+: Additional Automations (TBD by Mark OS Board)
```

---

## 🚨 CRITICAL RULES (Alle Phasen)

### Rule 1: Mark ist IMMER der Entscheidungsträger
- **Phase 1:** Mark entscheidet über Strategie
- **Phase 2:** Mark validiert Learnings & Reviews
- **Phase 3:** Mark genehmigt Automations-Deployment

**Nicht:** "Claude entscheidet, Mark ratifiziert"
**Sondern:** "Claude empfiehlt, Mark entscheidet"

---

### Rule 2: Dokumentation IMMER vor Umsetzung
- Entscheidungen → dokumentiert → Tasks gestartet
- Automationen → spezifiziert → entwickelt

**Nicht:** Ad-hoc Umsetzung, dann dokumentieren
**Sondern:** Plan → Dokumentation → Umsetzung

---

### Rule 3: Governance ist "Enabler", nicht "Blocker"
- Governance soll schneller/besser entscheiden ermöglichen
- Nicht: Bureaucracy, slowness, complexity

**Beispiel:**
```
❌ BAD: "Alles braucht 10 Reviews vor Deployment"
✅ GOOD: "Schnelle Entscheidung mit klarem Workflow"
```

---

### Rule 4: Learning ist kontinuierlich
- Phase 2 Reviews identifizieren Patterns
- Patterns informieren Phase 3 Automationen
- Automationen generieren neue Learnings

**Cycle:** Decide → Review → Learn → Automate → Monitor → Learn

---

## 🔗 Navigation

- **Decision Log:** [[wiki/meta/decision-log.md|Decision Log]] — Entscheidungs-Registry
- **Automations Registry:** [[wiki/meta/automations-registry.md|Automations Registry]] — Automations-Registry
- **Master-Actions:** [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Impact auf Tasks
- **Mark OS:** [[wiki/projects/Mark-OS.md|Mark OS Projekt]] — Gesamtstrategie
- **Decisions Index:** [[wiki/meta/decisions/index.md|Decisions Index]] — Pro Entscheidung
- **Automations Index:** [[wiki/meta/automations/index.md|Automations Index]] — Pro Automation

---

**Status:** 🟡 **PHASE 1 LIVE** (Phase 2+3 ready)
**Owner:** Mark Markner (Governance Authority) + Claude (Process Management)
**Last Updated:** 2026-08-17
