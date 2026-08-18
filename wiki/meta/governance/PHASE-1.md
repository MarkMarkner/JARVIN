---
type: meta
title: Mark OS Governance — PHASE 1
status: active
created: 2026-08-17
updated: 2026-08-17
phase: phase-1
tags:
  - governance
  - phase-1
  - mark-os
  - decision-workflow
address: meta-governance-phase1
---

# PHASE 1: Entscheidungs-Freigabe Workflow

**Zeitraum:** Jetzt (Aug 2026+)  
**Status:** 🟡 **LIVE**  
**Ziel:** Governance strukturieren, Mark's Entscheidungen dokumentieren

---

## 🔄 Workflow (5 Schritte)

```
1. ANALYSE (Claude)
   ↓
2. EMPFEHLUNG (Claude)
   ↓
3. ENTSCHEIDUNG (Mark)
   ↓
4. DOKUMENTATION (decisions/index.md)
   ↓
5. UMSETZUNG (Master-Action-Items update)
```

---

## 📋 Schritt-für-Schritt

### 1️⃣ ANALYSE (Claude)
- Sammelt alle relevanten Informationen
- Analysiert Pros/Cons
- Vorbereitung für Empfehlung

### 2️⃣ EMPFEHLUNG (Claude)
- Format: "Meine Empfehlung: [JA/NEIN] weil [Gründe]"
- **Wichtig:** Claude ist BERATER, nicht Entscheidungsträger!

### 3️⃣ ENTSCHEIDUNG (Mark)
- **Wer:** Mark Markner (IMMER!)
- Format: "Okay, wir machen [JA/NEIN/CONDITIONAL]"
- Mark kann Empfehlung annehmen, ablehnen oder variieren

### 4️⃣ DOKUMENTATION
- Wo: [[wiki/meta/decisions/index.md|Decisions Index]]
- Format: DEC-ID, Datum, Rationale, Entscheidung, Impact
- Beispiel: [[wiki/meta/decisions/DEC-2026-001.md|DEC-2026-001]]

### 5️⃣ UMSETZUNG
- Update: [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]]
- TODOs anpassen basierend auf Entscheidung

---

## 👥 Rollen & Verantwortlichkeiten

| Rolle | Verantwortung | Entscheidung? |
|-------|---------------|---------------|
| **Claude** | Analyse, Empfehlung, Dokumentation | ❌ NEIN (nur Empfehlung) |
| **Mark** | Bewertung, Entscheidung, Freigabe | ✅ **JA** |

---

## ⚠️ Regeln für Phase 1

**Rule 1:** Mark trifft alle Entscheidungen > Strategie-Level

**Rule 2:** Alle strategischen Entscheidungen MÜSSEN in [[wiki/meta/decisions/index.md|Decisions Index]] dokumentiert werden

**Rule 3:** Entscheidungen haben Impact auf [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]]

**Rule 4:** Rationale ist wichtiger als Ergebnis (für Phase 2 Reviews)

---

## 📝 Beispiel: GmbH-Gründung

```
MARK: "Sollten wir GmbH gründen?"

CLAUDE:
"Analyse: Steuerlich sinnvoll, Haftungsschutz, Sparkasse-fit.
Empfehlung: JA (GmbH) — Steuervorteile überwiegen Komplexität"

MARK: "Ja, GmbH wird gegründet."

CLAUDE:
"✅ DEC-2026-001 dokumentiert
✅ Tasks updated (Task 1a aktiviert, Task 1+2 entfernt)"
```

---

## 🔗 Navigation

- **← Zurück:** [[wiki/meta/governance/index.md|Governance Index]]
- **Nächste:** [[PHASE-2.md|PHASE 2]] (Entscheidungs-Review)
- **Decisions:** [[wiki/meta/decisions/index.md|Decisions Index]] — DEC-2026-XXX
- **Master-Actions:** [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]]

---

**Status:** 🟡 ACTIVE (Phase 1 läuft)  
**Created:** 2026-08-17  
**Owner:** Claude (Dokumentation) + Mark Markner (Governance)
