---
type: meta
title: Automations Registry — Zentrale Automations-Registry
status: active
created: 2026-08-17
updated: 2026-08-17
tags:
  - meta
  - automations
  - governance
  - mark-os-phase-2-3
address: meta-automations-registry-001
---

# Automations Registry — Zentrale Automations-Registry

**Zweck:** EINE zentrale Registry für ALLE geplanten Automationen (Phase 2 + Phase 3)

**Struktur:** Jede Automation = Eintrag hier + detaillierte Datei in [[wiki/meta/automations/|automations/ folder]]

**Verlinkt zu:**
- [[wiki/meta/automations/index.md|Automations Index]] — Navigator pro Automation
- [[wiki/meta/mark-os-governance.md|Mark OS Governance]] — Phase 3 Automations-Freigabe Workflow
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Automation Timelines

---

## 📋 Alle Automationen 2026

### 🔴 GEPLANT (Phase 2 - Spezifikation)

#### **AUTO-001: Angebotsprüfung Fix-und-Flip**
- **Typ:** Immobilien-Analyse Automation
- **Phase:** 🟡 Phase 2 (Q4 2026)
- **Status:** 🔴 GEPLANT (Specs definiert, nicht gestartet)
- **Owner:** Claude (Entwicklung) + Mark (Testing & Freigabe)
- **Trigger:** Neue Immobilien-Kandidaten in Fix-und-Flip Projekt
- **Frequency:** Ad-hoc (bei neuen Kandidaten)

**Input Schema:**
```json
{
  "immobilie_id": "string",
  "marktwert_eur": 200000,
  "renovierungskosten_eur": 50000,
  "verkaufspreis_target_eur": 300000,
  "holding_kapitalquote": 0.10,
  "sparkasse_zinssatz": 0.045
}
```

**Output Schema:**
```json
{
  "go_nogo": "GO | NO_GO",
  "gewinnmarge_eur": 30000,
  "gewinnmarge_percent": 10.0,
  "roi_percent": 15.0,
  "sparkasse_kreditbedarf_eur": 180000,
  "confidence_level": "high | medium | low",
  "rationale": "string"
}
```

**Dependencies:** 
- Fix-und-Flip Projekt (data source)
- Sparkasse Kreditkosten (via DEC-2026-002)
- Markner Holding Kapitalquote

**Timeline:** Q4 2026
- Start Development: 1. Okt
- Testing Phase: 8-14. Okt
- Mark Genehmigung: 15. Okt
- Rollout: 15-31. Okt
- Monitoring: Nov 1-30

**Details:** [[wiki/meta/automations/AUTO-001.md|AUTO-001 (Ausführlich)]]
**Test Plan:** TBD (wird in Phase 2 erstellt)
**Rollout Plan:** TBD (wird in Phase 2 erstellt)

---

#### **AUTO-002: E-Commerce Performance Tracking**
- **Typ:** Financial-Reporting Automation
- **Phase:** 🟡 Phase 2 (Q4 2026)
- **Status:** 🔴 GEPLANT (Specs definiert, nicht gestartet)
- **Owner:** Claude (Entwicklung) + Mark (Monitoring)
- **Trigger:** Ende jeden Monats
- **Frequency:** Monatlich (automatisch am 1. jeden Monats)

**Input Schema:**
```json
{
  "month": "2026-09",
  "revenue_eur": 15000,
  "costs_eur": 8000,
  "inventory_eur": 25000,
  "seller_fee_eur": 1500,
  "notes": "string"
}
```

**Output Schema:**
```json
{
  "mrr_eur": 6000,
  "profit_margin_percent": 40.0,
  "trend": "up | stable | down",
  "forecast_3m_eur": 18000,
  "forecast_confidence": "high | medium | low"
}
```

**Dependencies:**
- E-Commerce Projekt (data source)
- Previous month data (for trend analysis)

**Timeline:** Q4 2026
- Start Development: 1. Nov
- Testing Phase: 8-14. Nov
- Mark Genehmigung: 15. Nov
- Rollout: 30. Nov (Live zum 1. Dez)
- Monitoring: Dec 1-31

**Details:** [[wiki/meta/automations/AUTO-002.md|AUTO-002 (Ausführlich)]]
**Test Plan:** TBD
**Rollout Plan:** TBD

---

#### **AUTO-003: Holding Cashflow Planning**
- **Typ:** Financial-Planning Automation
- **Phase:** 🟡 Phase 2 (Q1 2027)
- **Status:** 🔴 GEPLANT (Specs definiert, nicht gestartet)
- **Owner:** Claude (Entwicklung) + Mark (Strategy)
- **Trigger:** Wöchentlich (jeden Freitag)
- **Frequency:** Wöchentlich

**Input Schema:**
```json
{
  "projects": [
    {
      "project_id": "string",
      "monthly_cashflow_eur": 5000,
      "expected_distribution_date": "2026-10-01",
      "risk_factor": 0.1
    }
  ]
}
```

**Output Schema:**
```json
{
  "holding_monthly_forecast_eur": 15000,
  "months_of_runway": 8,
  "liquidity_risk_level": "green | yellow | red",
  "recommendations": "string[]"
}
```

**Dependencies:**
- E-Commerce Projekt cashflow
- Fix-und-Flip Projekt cashflow
- IBA Projekt cashflow

**Timeline:** Q1 2027
- Start Development: 1. Jan 2027
- Testing Phase: 8-14. Jan
- Mark Genehmigung: 15. Jan
- Rollout: 31. Jan (Live zum 1. Feb)
- Monitoring: Feb+

**Details:** [[wiki/meta/automations/AUTO-003.md|AUTO-003 (Ausführlich)]]
**Test Plan:** TBD
**Rollout Plan:** TBD

---

#### **AUTO-004: Risiko-Monitoring**
- **Typ:** Risk-Management Automation
- **Phase:** 🟡 Phase 2 (Q1 2027)
- **Status:** 🔴 GEPLANT (Specs definiert, nicht gestartet)
- **Owner:** Claude (Entwicklung) + Mark (Strategy)
- **Trigger:** Wöchentlich (jeden Donnerstag)
- **Frequency:** Wöchentlich

**Input Schema:**
```json
{
  "projects": [
    {
      "project_id": "string",
      "status": "active | developing | blocked | complete",
      "risk_factors": "string[]",
      "deadline_days": 45,
      "progress_percent": 65
    }
  ]
}
```

**Output Schema:**
```json
{
  "overall_holding_risk_score": 0.45,
  "projects_at_risk": [
    {
      "project_id": "string",
      "risk_score": 0.75,
      "top_risks": "string[]"
    }
  ],
  "holding_recommendations": "string[]"
}
```

**Dependencies:**
- Alle Projekt-Statuses
- Master-Action-Items (Deadlines)
- Decision-Log (Impact von Entscheidungen)

**Timeline:** Q1 2027
- Start Development: 1. Jan 2027
- Testing Phase: 8-14. Jan
- Mark Genehmigung: 15. Jan
- Rollout: 1. Feb 2027
- Monitoring: Feb+

**Details:** [[wiki/meta/automations/AUTO-004.md|AUTO-004 (Ausführlich)]]
**Test Plan:** TBD
**Rollout Plan:** TBD

---

## 📊 Automation Status Übersicht

| ID | Name | Phase | Status | Timeline | Owner |
|-----|------|-------|--------|----------|-------|
| AUTO-001 | Angebotsprüfung | Phase 2 | 🔴 GEPLANT | Q4 2026 | Claude + Mark |
| AUTO-002 | Performance Tracking | Phase 2 | 🔴 GEPLANT | Q4 2026 | Claude + Mark |
| AUTO-003 | Cashflow Planning | Phase 2 | 🔴 GEPLANT | Q1 2027 | Claude + Mark |
| AUTO-004 | Risiko-Monitoring | Phase 2 | 🔴 GEPLANT | Q1 2027 | Claude + Mark |

**Status Summary:**
- 🔴 GEPLANT: 4
- 🟡 IN PROGRESS: 0
- 🟢 LIVE: 0

---

## 🔄 Automations-Freigabe Workflow (Mark OS Phase 3)

**Regel:** Alle Automationen müssen Mark's Freigabe erhalten vor Deployment

### Schritt 1: SPEZIFIKATION (Claude)
Automation wird spezifiziert mit Input/Output Schemas, Dependencies, Timeline

### Schritt 2: ENTWICKLUNG (Claude)
Automation wird gebaut basierend auf Specs

### Schritt 3: TEST-PLAN (Claude)
Test-Plan wird definiert und durchgeführt

### Schritt 4: MARK GENEHMIGUNG
**Mark gibt Freigabe** nach Reviewed Test-Results

### Schritt 5: DEPLOYMENT
Automation wird deployed zu Production

### Schritt 6: MONITORING
Automation wird überwacht für 2 Wochen post-deployment

### Schritt 7: STATUS UPDATE
automations-registry.md wird updated (Status: LIVE)

---

## 📋 Automation Roadmap

```
Phase 2 (Q4 2026 - Q1 2027):
├─ AUTO-001: Angebotsprüfung (Oct 2026) ← FIRST
├─ AUTO-002: Performance Tracking (Nov 2026)
├─ AUTO-003: Cashflow Planning (Jan 2027)
└─ AUTO-004: Risiko-Monitoring (Feb 2027)

Phase 3 (2027+):
└─ Additional Automations (TBD)
```

---

## 🔗 Navigation

- **Index:** [[wiki/meta/automations/index.md|Automations Index]] — Navigator pro Automation
- **Governance:** [[wiki/meta/mark-os-governance.md|Mark OS Governance]] — Phase 3 Workflow
- **Decision Log:** [[wiki/meta/decision-log.md|Decision Log]] — Abhängige Entscheidungen
- **Master-Actions:** [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Timeline Impact
- **Mark OS:** [[wiki/projects/Mark-OS.md|Mark OS Projekt]] — Übergeordnete Strategie

---

**Status:** 🔴 **GEPLANT** (Phase 2 kommt Sept 2026)
**Owner:** Claude (Registry) + Mark Markner (Freigaben)
**Last Updated:** 2026-08-17
