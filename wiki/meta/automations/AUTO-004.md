---
type: meta
title: AUTO-004 — Risiko-Monitoring
status: planned
created: 2026-08-17
updated: 2026-08-17
automation-id: AUTO-004
tags:
  - automation
  - phase-2
  - risk
  - holding
address: meta-automation-004
---

# AUTO-004: Risiko-Monitoring

**Phase:** 🟡 Phase 2 (Q1 2027)  
**Status:** 🔴 **GEPLANT**  
**Priority:** 🟠 MEDIUM  
**Owner:** Claude (Entwicklung) + Mark (Freigabe)  
**Timeline:** Q1 2027 (Start: Jan 15, Live: Feb 1)

---

## 🎯 Zweck

Automatisches Risiko-Scoring pro Projekt & Holding-Level.  
Input: Projekt-Status, Marktdaten → Output: Risiko-Score, Mitigations-Empfehlungen

---

## 📥 Input Schema

```json
{
  "projects": [
    {
      "project_id": "string",
      "status": "active | developing | blocked",
      "risk_factors": ["string"],
      "deadline_days": "number",
      "progress_percent": "number"
    }
  ]
}
```

---

## 📤 Output Schema

```json
{
  "overall_holding_risk_score": "0.0 - 1.0",
  "projects_at_risk": [
    {
      "project_id": "string",
      "risk_level": "high | medium | low",
      "primary_risk": "string",
      "mitigation": "string"
    }
  ],
  "holding_recommendations": ["string"]
}
```

---

## 🔗 Dependencies

- Alle Projekte (Fix-und-Flip, E-Commerce, IBA)
- Market-Data (optionale externe Source)

---

## ✅ Test-Plan

- [ ] Bekannte Risiken erkennen (z.B. IBA Förder-Blockade)
- [ ] False-Positive Rate minimieren
- [ ] Scoring-Logik mit Mark verifizieren

---

## 🚀 Rollout-Plan

- Jan 15: Start Entwicklung
- Feb 1: Test + Rollout
- Ongoing: Weekly Risk-Score Updates

---

## 🔗 Navigation

- **← Zurück:** [[wiki/meta/automations/index.md|Automations Index]]
- **Vorher:** [[AUTO-003.md|AUTO-003]] (Cashflow Planning)
- **Governance:** [[wiki/meta/governance/PHASE-3.md|PHASE 3 Freigabe-Workflow]]

---

**Created:** 2026-08-17  
**Owner:** Claude (Tech) + Mark Markner (Freigabe)
