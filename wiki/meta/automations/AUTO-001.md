---
type: meta
title: AUTO-001 — Angebotsprüfung Fix-und-Flip
status: planned
created: 2026-08-17
updated: 2026-08-17
automation-id: AUTO-001
tags:
  - automation
  - phase-2
  - fix-und-flip
address: meta-automation-001
---

# AUTO-001: Angebotsprüfung Fix-und-Flip

**Phase:** 🟡 Phase 2 (Q4 2026)  
**Status:** 🔴 **GEPLANT**  
**Priority:** 🔴 HIGH  
**Owner:** Claude (Entwicklung) + Mark (Freigabe)  
**Timeline:** Q4 2026 (Start: Oct 1, Rollout: Oct 15)

---

## 🎯 Zweck

Automatische Bewertung von Immobilien-Kandidaten für Fix-und-Flip.  
Input: Marktwert, Renovierungs-Kosten, Verkaufspreis → Output: Go/No-Go + Gewinnmarge

---

## 📥 Input Schema

```json
{
  "immobilie_id": "string",
  "marktwert_eur": "number",
  "renovierungskosten_eur": "number",
  "verkaufspreis_target_eur": "number",
  "holding_kapitalquote": "number (default: 0.10)",
  "sparkasse_zinssatz": "number (default: 0.045)"
}
```

---

## 📤 Output Schema

```json
{
  "go_nogo": "GO | NO_GO",
  "gewinnmarge_eur": "number",
  "gewinnmarge_percent": "number",
  "roi_percent": "number",
  "sparkasse_kreditbedarf_eur": "number",
  "confidence_level": "high | medium | low",
  "rationale": "string"
}
```

---

## 🔗 Dependencies

- [[wiki/projects/Fix-und-Flip-Masterclass-2026-2027.md|Fix-und-Flip Projekt]] — Data source (Kandidaten)
- [[wiki/meta/decisions/DEC-2026-002.md|DEC-2026-002]] — Sparkasse Konditionen (4,5% Zinsen)
- [[wiki/entities/Markner Holding GmbH.md|Markner Holding]] — Kapitalquote

---

## ✅ Test-Plan

- [ ] 10 reale Kandidaten testen (Manual vs Auto)
- [ ] Accuracy: ±5% zu manueller Berechnung
- [ ] Edge-Cases: Sehr hohe/niedrige Kosten, Risiken
- [ ] Go/No-Go mit Mark verifizieren

---

## 🚀 Rollout-Plan

- Oct 1: Start Entwicklung
- Oct 10: Test-Phase
- Oct 14: Mark Review & Genehmigung
- Oct 15: **LIVE** (Production)

---

## 🔗 Navigation

- **← Zurück:** [[wiki/meta/automations/index.md|Automations Index]]
- **Nächste:** [[AUTO-002.md|AUTO-002]] (Performance Tracking)
- **Governance:** [[wiki/meta/governance/PHASE-3.md|PHASE 3 Freigabe-Workflow]]

---

**Created:** 2026-08-17  
**Owner:** Claude (Tech) + Mark Markner (Freigabe)
