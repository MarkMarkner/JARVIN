---
type: meta
title: AUTO-003 — Holding Cashflow Planning
status: planned
created: 2026-08-17
updated: 2026-08-17
automation-id: AUTO-003
tags:
  - automation
  - phase-2
  - cashflow
  - holding
address: meta-automation-003
---

# AUTO-003: Holding Cashflow Planning

**Phase:** 🟡 Phase 2 (Q1 2027)  
**Status:** 🔴 **GEPLANT**  
**Priority:** 🟠 MEDIUM  
**Owner:** Claude (Entwicklung) + Mark (Freigabe)  
**Timeline:** Q1 2027 (Start: Jan 1, Live: Jan 31)

---

## 🎯 Zweck

Automatische Holding-Level Cashflow-Prognose.  
Input: Alle Projekt-Cashflows → Output: Gesamte Holding Liquiditäts-Forecast, Knappheits-Alerts

---

## 📥 Input Schema

```json
{
  "projects": [
    {
      "project_id": "string",
      "name": "string",
      "monthly_cashflow_eur": "number",
      "expected_distribution_date": "YYYY-MM",
      "risk_factor": "0.0 - 1.0"
    }
  ]
}
```

---

## 📤 Output Schema

```json
{
  "holding_monthly_forecast_eur": "number",
  "months_of_runway": "number",
  "liquidity_risk_level": "green | yellow | red",
  "knappheits_alerts": ["string"],
  "recommendations": ["string"]
}
```

---

## 🔗 Dependencies

- [[wiki/projects/Fix-und-Flip-Masterclass-2026-2027.md|Fix-und-Flip]] — Cashflow (Gewinne)
- [[wiki/projects/E-Commerce-Akquisition-2026.md|E-Commerce]] — Monthly MRR
- [[wiki/projects/IBA-Initiative-Bau-Archiv.md|IBA]] — Revenue (wenn Live)

---

## ✅ Test-Plan

- [ ] Historische Daten verifizieren
- [ ] Forecast mit Realität vergleichen
- [ ] Alert-Mechanik testen

---

## 🚀 Rollout-Plan

- Jan 1: Start Entwicklung
- Jan 31: Test + Rollout
- Ongoing: Weekly Forecast-Updates

---

## 🔗 Navigation

- **← Zurück:** [[wiki/meta/automations/index.md|Automations Index]]
- **Vorher:** [[AUTO-002.md|AUTO-002]] (Performance Tracking)
- **Nächste:** [[AUTO-004.md|AUTO-004]] (Risiko-Monitoring)
- **Governance:** [[wiki/meta/governance/PHASE-3.md|PHASE 3 Freigabe-Workflow]]

---

**Created:** 2026-08-17  
**Owner:** Claude (Tech) + Mark Markner (Freigabe)
