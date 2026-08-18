---
type: meta
title: Dashboard Definitions — Metriken & Queries für Mark OS Cockpit
status: active
created: 2026-08-17
updated: 2026-08-17
tags:
  - meta
  - dashboard
  - metrics
  - mark-os-phase-3
  - monitoring
address: meta-dashboard-definitions-001
---

# Dashboard Definitions — Metriken & Queries für Mark OS Cockpit

**Zweck:** Definiert ALLE Metriken, KPIs, und Dataview Queries für Mark OS Cockpit (Phase 3)

**Zeitrahmen:** Konzipiert für Phase 3 (2027), getestet & optimiert in Phase 2 (Sept 2026+)

**Verlinkt zu:**
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Project Status Input
- [[wiki/meta/decision-log.md|Decision Log]] — Decision Tracking Input
- [[wiki/meta/automations-registry.md|Automations Registry]] — Automation Status Input
- [[wiki/projects/Mark-OS.md|Mark OS Projekt]] — Overarching Strategy

---

## 🎯 COCKPIT DESIGN

### Struktur (3 Dashboards)

```
MARK OS COCKPIT

Dashboard 1: PROJECT STATUS
├─ Status pro Projekt (🟢🟡🔴)
├─ Progress % (0-100%)
├─ Risk-Score
├─ Days to Deadline
├─ Owner
└─ Last Updated

Dashboard 2: DECISION TRACKING
├─ Open Decisions (PENDING)
├─ Approved Decisions (✅)
├─ Decision Velocity (decisiones/month)
├─ Review-Status
└─ Patterns

Dashboard 3: AUTOMATION STATUS
├─ Planned Automations (count)
├─ In-Progress Automations (count)
├─ Live Automations (count)
├─ Next Planned Deploy
└─ Deployment Timeline
```

---

## 📊 DASHBOARD 1: PROJECT STATUS

**Purpose:** Überblick aller Projekte, Prioritäten, Deadlines, Risiken

### Metriken pro Projekt

#### **Status** 🔴
- 🟢 Active (läuft)
- 🟡 Developing (in Planung)
- 🔴 Blocked (wartet auf Input/Entscheidung)
- ✅ Complete (abgeschlossen)

#### **Progress** %
- 0-100% Complete
- Berechnet aus Task-Completion in Master-Action-Items
- Formula: (Tasks Complete / Tasks Total) * 100

#### **Risk-Score** (0.0 - 1.0)
- 🟢 Low: 0.0 - 0.33
- 🟡 Medium: 0.33 - 0.66
- 🔴 High: 0.66 - 1.0

Berechnet aus:
- Deadline proximity (tage überfällig = höheres Risk)
- Blocked tasks (blockierte Tasks = höheres Risk)
- Pending decisions (ausstehende Entscheidungen = höheres Risk)
- Technical complexity

#### **Days to Deadline**
- Tage bis zum Projektdeadline
- 🟢 Green: > 14 Tage
- 🟡 Yellow: 7-14 Tage
- 🔴 Red: < 7 Tage
- ⚫ Black: überfällig

#### **Owner**
- Wer ist verantwortlich?
- Link zu [[wiki/entities/]] Person

#### **Last Updated**
- Wann wurde Status zuletzt aktualisiert?
- Automatisch aus Master-Action-Items

---

### Dashboard 1 Query (Dataview)

```dataview
WHERE type = "project" AND status != "archived"
SORT deadline ASC

| Name | Owner | Status | Progress | Risk | Days to Deadline | Last Updated |
```

---

### Dashboard 1 Beispiel

| Projekt | Owner | Status | Progress | Risk | Deadline | Days |
|---------|-------|--------|----------|------|----------|------|
| **E-Commerce** | Mark | 🟡 Developing | 40% | 🟡 Medium | 30. Sept | 13 |
| **Fix-und-Flip** | Mark | 🟡 Developing | 25% | 🟡 Medium | 31. Okt | 45 |
| **IBA** | Mark | 🔴 Developing | 10% | 🔴 High | 31. Dez | 136 |
| **Sparkasse** | Mark | 🟢 Active | 90% | 🟢 Low | ✅ Done | — |

---

### Dashboard 1 Status Rules

**🟢 Green (Active):** Läuft, keine Blockers
- Risk Low
- Progress > 30%
- No Pending Decisions

**🟡 Yellow (Developing):** In Planung oder verlangsamt
- Risk Medium
- Progress < 70%
- Some Pending Decisions oder Blocked Tasks

**🔴 Red (Blocked):** Warte auf externe Input
- Risk High
- Critical Pending Decisions
- Critical Blocked Tasks

**✅ Complete:** Abgeschlossen
- Progress 100%
- No Outstanding Tasks

---

## 📊 DASHBOARD 2: DECISION TRACKING

**Purpose:** Überblick aller Entscheidungen, Status, Velocity, Patterns

### Metriken

#### **Open Decisions** (Count)
- Entscheidungen mit Status: PENDING
- Warten auf Mark's Freigabe

**Query:**
```dataview
FROM "wiki/meta/decision-log.md"
WHERE status = "pending"
SORT date DESC
```

**Display:** Count + Liste

---

#### **Approved Decisions** (Count)
- Entscheidungen mit Status: ✅ ENTSCHIEDEN
- Von Mark genehmigt

**Query:**
```dataview
FROM "wiki/meta/decision-log.md"
WHERE status = "approved" OR status = "decided"
SORT date DESC
```

**Display:** Count + Liste

---

#### **Decision Velocity** (Decisions/Month)
- Wie schnell trifft Mark Entscheidungen?
- Berechnet: Count of Decisions in letzte 30 Tage

**Formel:**
```
Velocity = Count(Decisions in letzte 30 Tage) / 1 month
```

**Beispiel:**
```
Aug 2026: 3 Entscheidungen → Velocity = 3/month
Sept 2026: 2 Entscheidungen → Velocity = 2/month
Oct 2026: 4 Entscheidungen → Velocity = 4/month
Average Q4 = 3 decisions/month
```

---

#### **Review-Status** (Phase 2)
- Welche Entscheidungen sind für Review reif?
- Entscheidungen älter als 30 Tage ohne Review Notes

**Query:**
```dataview
FROM "wiki/meta/decision-log.md"
WHERE status = "approved" AND reviewed = false
SORT date ASC
```

**Display:** Count + Liste

---

#### **Patterns** (Learnings)
- Erkannte Patterns aus Phase 2 Reviews

**Beispiele:**
```
Pattern 1: "Mark entscheidet schnell (< 1 week average)"
Pattern 2: "Mark bevorzugt pragmatische Lösungen über perfekte"
Pattern 3: "Delegierung: Mark fokussiert strategisch, alles operativ weise ab"
```

---

### Dashboard 2 Beispiel

```
📊 DECISION TRACKING DASHBOARD

Open Decisions: 3
├─ DEC-2026-001: GmbH ja/nein? (Aug 17)
├─ DEC-2026-002: Sparkasse Main Bank? (Aug 17)
└─ DEC-2026-003: E-Commerce Priority? (Aug 17)

Approved Decisions: 0

Decision Velocity: 3 decisions/month
Last Decision: DEC-2026-003 (Aug 17)

Review-Status: Awaiting Sept Reviews
```

---

## 📊 DASHBOARD 3: AUTOMATION STATUS

**Purpose:** Überblick aller Automationen, Status, Pipeline, Timeline

### Metriken

#### **Planned Automations** (Count)
- Automationen mit Status: 🔴 GEPLANT
- Specs definiert, nicht in Entwicklung

**Query:**
```dataview
FROM "wiki/meta/automations-registry.md"
WHERE status = "planned"
SORT timeline ASC
```

**Display:** Count + Liste

---

#### **In-Progress Automations** (Count)
- Automationen mit Status: 🟡 IN PROGRESS
- Aktiv in Entwicklung oder Testing

**Query:**
```dataview
FROM "wiki/meta/automations-registry.md"
WHERE status = "in_progress"
SORT timeline ASC
```

**Display:** Count + Liste

---

#### **Live Automations** (Count)
- Automationen mit Status: 🟢 LIVE
- Produktiv im Einsatz

**Query:**
```dataview
FROM "wiki/meta/automations-registry.md"
WHERE status = "live"
SORT deployed_date DESC
```

**Display:** Count + Liste + Deploy Date

---

#### **Next Planned Deploy**
- Nächste Automation geplant für Deployment
- Basierend auf automations-registry Timeline

**Query:**
```dataview
FROM "wiki/meta/automations-registry.md"
WHERE status = "planned" OR status = "in_progress"
SORT timeline ASC
LIMIT 1
```

**Display:**
```
Next Deploy: AUTO-002 (E-Commerce Performance Tracking)
Timeline: Nov 30, 2026
Status: 🔴 GEPLANT (Specs done, dev not started)
Owner: Claude + Mark
```

---

#### **Deployment Timeline** (Gantt-Style)
- Visuelle Timeline aller Automations-Deployments

**Format:**
```
Q4 2026:
├─ AUTO-001: Angebotsprüfung
│  └─ Oct 1-31 (Development + Testing + Rollout)
└─ AUTO-002: Performance Tracking
   └─ Nov 1-30 (Development + Testing + Rollout)

Q1 2027:
├─ AUTO-003: Cashflow Planning
│  └─ Jan 1-31 (Development + Testing + Rollout)
└─ AUTO-004: Risiko-Monitoring
   └─ Feb 1-28 (Development + Testing + Rollout)
```

---

### Dashboard 3 Beispiel

```
📊 AUTOMATION STATUS DASHBOARD

Planned Automations: 4
├─ AUTO-001: Angebotsprüfung (Q4 2026)
├─ AUTO-002: Performance Tracking (Q4 2026)
├─ AUTO-003: Cashflow Planning (Q1 2027)
└─ AUTO-004: Risiko-Monitoring (Q1 2027)

In-Progress Automations: 0

Live Automations: 0

Next Deploy: AUTO-001 (Angebotsprüfung)
├─ Timeline: Oct 15, 2026
├─ Status: 🔴 GEPLANT
├─ Owner: Claude (dev) + Mark (approval)
└─ Progress: 0%
```

---

## 🔧 DASHBOARD IMPLEMENTATION ROADMAP

### Phase 2 (Sept 2026+): Testing & Optimization
- [ ] Dataview queries schreiben & testen
- [ ] Metrics berechnen & validieren
- [ ] Risk-Score Formel optimieren
- [ ] Dashboard Rendition testen

### Phase 3 (Jan 2027+): Production Deployment
- [ ] Cockpit-Dashboard erstellen (Obsidian Canvas oder Dashboard Plugin)
- [ ] Queries live schalten
- [ ] Mark trained on Cockpit usage
- [ ] Weekly monitoring & optimization

---

## 📋 QUERY TEMPLATES (Dataview)

### Template 1: Project Status
```dataview
WHERE type = "project" AND status != "archived"
SORT deadline ASC
TABLE
  status AS Status,
  progress AS Progress,
  risk_score AS Risk,
  owner AS Owner,
  updated AS LastUpdated
```

### Template 2: Open Decisions
```dataview
FROM "wiki/meta/decision-log.md"
WHERE status = "pending"
SORT date DESC
TABLE
  date AS Date,
  rationale AS Rationale,
  status AS Status
```

### Template 3: Automations Pipeline
```dataview
FROM "wiki/meta/automations-registry.md"
WHERE status IN ("planned", "in_progress", "live")
SORT timeline ASC
TABLE
  name AS Name,
  status AS Status,
  timeline AS Timeline,
  owner AS Owner
```

---

## 🎯 PHASE 3 COCKPIT VISION

**Ziel:** Mark sieht auf einen Blick:
- Welche Projekte sind on track? (🟢)
- Welche brauchen Aufmerksamkeit? (🟡🔴)
- Welche Entscheidungen sind pending? (Count)
- Welche Automationen sind live? (Count)
- Was sind die größten Risiken? (Top 3)

**Effekt:** Schnelle Entscheidungen, minimale Email/Meetings

---

## 🔗 Navigation

- **Decision Log:** [[wiki/meta/decision-log.md|Decision Log]] — Entscheidungs-Details
- **Automations Registry:** [[wiki/meta/automations-registry.md|Automations Registry]] — Automations-Details
- **Master-Actions:** [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Task Details
- **Mark OS:** [[wiki/projects/Mark-OS.md|Mark OS Projekt]] — Strategie
- **Governance:** [[wiki/meta/mark-os-governance.md|Mark OS Governance]] — Workflows

---

**Status:** 🟢 **READY FOR PHASE 2 TESTING** (Queries & Metrics defined)
**Owner:** Claude (Queries & Metrics) + Mark (Validation & Usage)
**Phase 3 Target:** Jan 2027 (Cockpit Live)
**Last Updated:** 2026-08-17
