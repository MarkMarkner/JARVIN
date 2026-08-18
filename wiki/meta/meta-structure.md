---
type: meta
title: Meta-Structure — Überblick über die Meta-Ebene Architektur
status: active
created: 2026-08-17
updated: 2026-08-17
tags:
  - meta
  - structure
  - architecture
  - reference
address: meta-meta-structure-001
---

# Meta-Structure — Überblick über die Meta-Ebene Architektur

**Zweck:** Erklärt die **Struktur, Zweck, und Verwendung** jeder Meta-Datei

**Zielgruppe:** Mark, Claude, zukünftige Teams

**Verlinkt zu:**
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Planning Layer
- [[wiki/meta/decision-log.md|Decision Log]] — Governance Layer
- [[wiki/meta/automations-registry.md|Automations Registry]] — Automation Layer
- [[wiki/meta/mark-os-governance.md|Mark OS Governance]] — Workflows

---

## 🎯 ÜBERGEORDNETE ARCHITEKTUR

```
MARK OS SYSTEM (2026-2027+)

Level 1: STRATEGY
└─ Mark OS Projekt (what, when, how, milestones)

Level 2: GOVERNANCE
└─ Meta-Ebene
   ├─ Decision Log (wer entscheidet, wann, warum)
   ├─ Automations Registry (was wird automatisiert)
   ├─ Mark OS Governance (workflows)
   └─ Master-Action-Items (tasks & tracking)

Level 3: OPERATIONS
├─ Entities (people, organizations)
├─ Projects (operational masters)
└─ Sessions (documentation)

Level 4: REFERENCE
├─ Concepts
├─ Questions
└─ Sources
```

Die **Meta-Ebene** ist das "Kontrolls-Nervenzentrum" — sie orchestriert alles andere.

---

## 📋 META-EBENE DATEIEN (Governance Layer)

### 1️⃣ DECISION-LOG.md

**Zweck:** Zentrale Registry ALLER strategischen Entscheidungen

**Format:**
```
Decision-ID | Datum | Entscheidungsträger | Status | Rationale | Optionen | Ergebnis
```

**Frequenz:** Ad-hoc (wenn Mark strategische Entscheidung trifft)

**Eigentum:** Mark (trifft Entscheidungen), Claude (dokumentiert)

**Linked von:**
- mark-os-governance.md (Phase 1 Workflow)
- hot.md (aktuelle Kontexte)
- log.md (Audit Trail)
- Decision Files in wiki/meta/decisions/

**Wann benutze ich decision-log.md?**
- Mark trifft strategische Entscheidung (Holding-Level & höher)
- Beispiel: "GmbH-Gründung ja/nein?"
- **NICHT:** Operative Entscheidungen (z.B. "Welche Farbe für Dokumente?")

**Wann benutze ich NICHT decision-log.md?**
- Operative Entscheidungen → [[wiki/log.md|log.md]]
- Task-Updates → [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]]
- Aktuelle Fragen → [[wiki/hot.md|hot.md]]

---

### 2️⃣ MARK-OS-GOVERNANCE.md

**Zweck:** Definiert die formalen Governance Workflows für Phasen 1/2/3

**Format:**
```
Phase 1: Entscheidungs-Freigabe Workflow (Analyse → Empfehlung → Entscheidung → Dok → Umsetzung)
Phase 2: Decision-Review Prozess (Monatlich: War die Entscheidung richtig? Patterns?)
Phase 3: Automations-Freigabe Prozess (Spec → Entwicklung → Test → Genehmigung → Deploy → Monitor)
```

**Frequenz:** Statisch (nur update wenn Workflow ändert)

**Eigentum:** Mark (definiert Regeln), Claude (dokumentiert & enforced)

**Linked von:**
- Decision Log (Phase 1 Workflow)
- Automations Registry (Phase 3 Workflow)
- Master-Action-Items (Impact)

**Wann benutze ich mark-os-governance.md?**
- Mark braucht zu verstehen: "Wie treffen wir Entscheidungen?"
- Claude braucht zu verstehen: "Welcher Workflow muss ich folgen?"
- Zukünftige Teams: "Wie funktioniert Mark OS Governance?"

**Wann benutze ich NICHT mark-os-governance.md?**
- Spezifische Entscheidung? → [[wiki/meta/decision-log.md|decision-log.md]]
- Spezifische Automation? → [[wiki/meta/automations-registry.md|automations-registry.md]]
- Operativer Workflow? → Project Dateien oder [[wiki/log.md|log.md]]

---

### 3️⃣ AUTOMATIONS-REGISTRY.md

**Zweck:** Zentrale Registry ALLER Automationen (Phase 2 + Phase 3)

**Format:**
```
Automation-ID | Name | Phase | Status | Trigger | Input Schema | Output Schema | Dependencies | Timeline
```

**Frequenz:** Update wenn neue Automation hinzugefügt oder Status ändert

**Eigentum:** Claude (registry), Mark (approvals)

**Linked von:**
- mark-os-governance.md (Phase 3 Workflow)
- dashboard-definitions.md (Automation Status)
- Automation Files in wiki/meta/automations/

**Wann benutze ich automations-registry.md?**
- Automation wird spezifiziert (alle 4 Auto-001, 002, 003, 004)
- Automation geht live (Status update)
- Mark braucht Überblick: "Welche Automationen haben wir?"

**Wann benutze ich NICHT automations-registry.md?**
- Operativer Task? → [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]]
- Deployment Details? → Individual Automation File in wiki/meta/automations/
- Monitoring? → [[wiki/log.md|log.md]]

---

### 4️⃣ MASTER-ACTION-ITEMS-2026.md

**Zweck:** Zentrale TODO-Liste für ALLE operativen Tasks & Tracking

**Format:**
```
Task-ID | Beschreibung | Deadline | Owner | Status | Dependencies | BLOCKED-Status
```

**Frequenz:** Weekly Update (Montag)

**Eigentum:** Mark (defines priorities), Claude (tracks status)

**Linked von:**
- hot.md (aktuelle TODOs)
- log.md (completed operations)
- Project Dateien (task links)

**Wann benutze ich Master-Action-Items?**
- Task muss tracked werden (0a, 1a, 2b, 3a, etc.)
- Task hat Deadline
- Task ist blockiert oder unblocked
- Mark braucht Überblick: "Was sind die nächsten Schritte?"

**Wann benutze ich NICHT Master-Action-Items?**
- Strategische Entscheidung? → [[wiki/meta/decision-log.md|decision-log.md]]
- Automation geplant? → [[wiki/meta/automations-registry.md|automations-registry.md]]
- Operationale Dokumentation? → Project Dateien oder [[wiki/log.md|log.md]]

---

### 5️⃣ DASHBOARD-DEFINITIONS.md

**Zweck:** Definiert Metriken, KPIs, Queries für Mark OS Cockpit (Phase 3)

**Format:**
```
Dashboard 1: Project Status (Status, Progress, Risk, Deadline, Owner)
Dashboard 2: Decision Tracking (Open, Approved, Velocity, Patterns)
Dashboard 3: Automation Status (Planned, In-Progress, Live, Timeline)
+ Dataview Queries für jedes Metric
```

**Frequenz:** Testing & Optimization in Phase 2, Live in Phase 3

**Eigentum:** Claude (defines queries), Mark (validates metrics)

**Linked von:**
- Master-Action-Items (Project Status data)
- Decision Log (Decision Tracking data)
- Automations Registry (Automation Status data)

**Wann benutze ich dashboard-definitions.md?**
- Phase 2: Testing Dataview Queries
- Phase 3: Mark braucht Cockpit-Überblick
- Claude braucht Metriken-Definition

**Wann benutze ich NICHT dashboard-definitions.md?**
- Einzelne Projekt-Details? → Project Datei
- Spezifische Entscheidung? → Decision Log
- Spezifische Automation? → Automations Registry

---

### 6️⃣ CONVENTIONS.md

**Zweck:** Style Guides, Frontmatter Rules, Naming Conventions für die ganze Vault

**Format:**
```
Frontmatter Schema
Wiki-Link Konventionen
File Naming Konventionen
Content Style (Deutsch/English)
Meta-Ebene Governance Rules
```

**Frequenz:** Statisch (nur update bei neuen Rules)

**Eigentum:** Claude (dokumentiert), Mark (genehmigt)

**Linked von:** Alle anderen Dateien (implizit)

**Wann benutze ich conventions.md?**
- Neue Datei erstellen (welches Format?)
- Wikilink checken (richtiges Format?)
- Style question (Deutsch oder English?)

---

## 🔄 RELATIONSHIP MATRIX

```
              GOVERNANCE    PLANNING      AUTOMATION    MONITORING
              (Entscheidung) (Tasks)       (Automation)  (Status)
              ═════════════ ═════════════ ═════════════ ═════════════

Decision Log  PRIMARY       ↓ Impact      ↓ Dependencies ← Reviews
              Strategic     Master-Items  Affects AUTO  (Phase 2)
              Registry

Mark-OS Gov   Workflows     ↓ Phase 1     ↓ Phase 3 Proc Dashboard
              Phase 1/2/3   Workflow      Approval      Metrics

Automations   Driven by     ↓ Task 0a     PRIMARY       ↓ Status
Registry      Decisions     (Automation)  Automation    Tracking
                                          Registry

Master-Items  ← Impact      PRIMARY       ← Dependencies ← Status
              from DEC      Task Tracking Blocking      Updates

Dashboard     ↓ Decision    ← Metrics     ← Metrics     PRIMARY
              Status        Input        Input         Dashboard

Conventions   Style         Style         Style         Style
              Rules         Rules         Rules         Rules
```

---

## 📊 LAYER ARCHITECTURE

### Layer 1: GOVERNANCE LAYER
**Komponenten:** decision-log, mark-os-governance, conventions
**Zweck:** Setze Regeln, treffe Entscheidungen, definiere Workflows
**Frequenz:** Ad-hoc + Monatlich Reviews
**Owner:** Mark (Authority), Claude (Process)

### Layer 2: PLANNING LAYER
**Komponenten:** Master-Action-Items
**Zweck:** Track operative TODOs, manage Deadlines, manage Blockers
**Frequenz:** Weekly Updates
**Owner:** Claude (Tracking), Mark (Prioritization)

### Layer 3: AUTOMATION LAYER
**Komponenten:** automations-registry
**Zweck:** Plan, track, manage Automationen
**Frequenz:** Per Automation (spec → dev → test → deploy → live)
**Owner:** Claude (Automation), Mark (Approval)

### Layer 4: MONITORING LAYER
**Komponenten:** dashboard-definitions, log.md, hot.md
**Zweck:** Monitor Status, track Progress, visualize Risks
**Frequenz:** Real-time (hot.md), Daily (log.md), Weekly (dashboard)
**Owner:** Claude (Tracking), Mark (Action)

---

## 🎯 DECISION TREE: "Wo schreibe ich das rein?"

```
START: "Ich habe neue Information"
│
├─ Ist es eine STRATEGISCHE ENTSCHEIDUNG? (> Holding-Level)
│  ├─ JA → decision-log.md + wiki/meta/decisions/DEC-XXX.md
│  └─ NEIN ↓
│
├─ Ist es eine AUTOMATION (Phase 2/3)?
│  ├─ JA → automations-registry.md + wiki/meta/automations/AUTO-XXX.md
│  └─ NEIN ↓
│
├─ Ist es ein TASK (mit Deadline)?
│  ├─ JA → Master-Action-Items-2026.md
│  └─ NEIN ↓
│
├─ Ist es ein AKTUELLER KONTEXT (Frage/Blockade)?
│  ├─ JA → hot.md
│  └─ NEIN ↓
│
├─ Ist es eine ABGESCHLOSSENE OPERATION?
│  ├─ JA → log.md
│  └─ NEIN ↓
│
└─ SONST
   └─ Operative Dokumentation in Project oder Entity Dateien
```

---

## 🔗 NAVIGATION

**Meta-Ebene Navigator:**
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Planning
- [[wiki/meta/decision-log.md|Decision Log]] — Decisions
- [[wiki/meta/automations-registry.md|Automations Registry]] — Automations
- [[wiki/meta/mark-os-governance.md|Mark OS Governance]] — Workflows
- [[wiki/meta/dashboard-definitions.md|Dashboard Definitions]] — Monitoring
- [[wiki/meta/conventions.md|Conventions]] — Style Rules

**Dezentralisierte Navigatoren:**
- [[wiki/meta/decisions/index.md|Decisions Index]] — Pro Entscheidung
- [[wiki/meta/automations/index.md|Automations Index]] — Pro Automation
- [[wiki/meta/governance/index.md|Governance Index]] — Pro Phase

**Kontext & Audit:**
- [[wiki/hot.md|Hot Context]] — Aktuelle Threads
- [[wiki/log.md|Operation Log]] — Abgeschlossene Ops

---

**Status:** 🟢 **REFERENCE DOCUMENT**
**Purpose:** Architecture & Navigation Guide
**Owner:** Claude (Documentation) + Mark (Validation)
**Last Updated:** 2026-08-17
