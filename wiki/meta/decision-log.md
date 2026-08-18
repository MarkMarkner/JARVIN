---
type: meta
title: Decision Log — Zentrale Entscheidungs-Registry
status: active
created: 2026-08-17
updated: 2026-08-17
tags:
  - meta
  - decisions
  - governance
  - mark-os-phase-1
address: meta-decision-log-001
---

# Decision Log — Zentrale Entscheidungs-Registry

**Zweck:** EINE zentrale Registry für ALLE strategischen Entscheidungen (Holding-Level & höher)

**Struktur:** Jede Entscheidung = Eintrag hier + detaillierte Datei in [[wiki/meta/decisions/|decisions/ folder]]

**Verlinkt zu:**
- [[wiki/meta/decisions/index.md|Decisions Index]] — Navigator pro Entscheidung
- [[wiki/meta/mark-os-governance.md|Mark OS Governance]] — Entscheidungs-Workflows
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Impact auf TODOs

---

## 📋 Alle Entscheidungen 2026

### 🔴 PENDING DECISIONS (Awaiting Mark's Approval)

#### **DEC-2026-001: GmbH-Gründung ja/nein?**
- **Datum:** 2026-08-17
- **Entscheidungsträger:** Mark Markner
- **Status:** 🔴 **PENDING** (Warten auf Freigabe)
- **Rationale:** Steuerliche Vorteile, Haftungsschutz, Kreditgesetz-Compliance
- **Optionen:** JA / NEIN / CONDITIONAL
- **Details:** [[wiki/meta/decisions/DEC-2026-001.md|DEC-2026-001 (Ausführlich)]]
- **Impact wenn JA:** Task 1a (GmbH Gründung) → AKTIVIERT
- **Impact wenn NEIN:** Task 1+2 (Steuerberater, Jurist) → AKTIVIERT
- **Affected Entities:** [[wiki/entities/Markner Holding GmbH.md]]
- **Review Notes:** (Gefüllt nach Mark's Entscheidung + Phase 2 Review)

---

#### **DEC-2026-002: Sparkasse Berlin als Hauptbank?**
- **Datum:** 2026-08-17
- **Entscheidungsträger:** Mark Markner
- **Status:** 🔴 **PENDING** (Warten auf Freigabe)
- **Rationale:** Beste Konditionen (4,5%), persönliche Beziehung, Pre-Approval 200-250k€
- **Optionen:** JA (Sparkasse) / NEIN (Alternative) / CONDITIONAL
- **Details:** [[wiki/meta/decisions/DEC-2026-002.md|DEC-2026-002 (Ausführlich)]]
- **Impact wenn JA:** Task 2b (Zusatz-Banken) → ANGEPASST
- **Impact wenn NEIN:** Task 2b → ALTERNATIVE GESTARTET
- **Affected Entities:** [[wiki/entities/Markner Holding GmbH.md]]
- **Review Notes:** (Gefüllt nach Mark's Entscheidung + Phase 2 Review)

---

#### **DEC-2026-003: E-Commerce Priorität vor Fix-und-Flip?**
- **Datum:** 2026-08-17
- **Entscheidungsträger:** Mark Markner
- **Status:** 🔴 **PENDING** (Warten auf Freigabe)
- **Rationale:** EK-Blockade Lösung (E-Commerce generiert Cashflow 80-100k€/Jahr für Fix-und-Flip)
- **Optionen:** JA (E-Commerce HÖCHSTE) / NEIN (Parallel) / CONDITIONAL
- **Details:** [[wiki/meta/decisions/DEC-2026-003.md|DEC-2026-003 (Ausführlich)]]
- **Impact wenn JA:** Task 0a (E-Commerce) → HIGHEST PRIORITY | Task 3a → BLOCKIERT bis 0a complete
- **Impact wenn NEIN:** Task 0a + 3a → LAUFEN PARALLEL
- **Affected Projects:** [[wiki/projects/E-Commerce-Akquisition-2026.md]], [[wiki/projects/Fix-und-Flip-Masterclass-2026-2027.md]]
- **Review Notes:** (Gefüllt nach Mark's Entscheidung + Phase 2 Review)

---

### ✅ APPROVED DECISIONS (Mark's Freigabe erhalten)

*(Einträge folgen nach Mark's Entscheidungen im Lauf des Jahres 2026)*

**Beispiel-Format (wird gefüllt nach Entscheidung):**

```
#### **DEC-2026-00X: [Beispiel-Entscheidung]**
- **Datum:** 2026-09-15
- **Entscheidungsträger:** Mark Markner
- **Status:** ✅ **ENTSCHIEDEN**
- **Entscheidung:** JA / NEIN / CONDITIONAL
- **Ergebnis:** [Spezifische Auswirkungen]
- **Tasks Updated:** Task 1a, Task 2b
- **Review Notes (Phase 2):** 
  - Sept 2026 Review: "War richtig weil..."
  - Learning: "[Pattern identified]"
```

---

## 🔄 Entscheidungs-Workflow (Mark OS Phase 1)

**Regel:** Alle strategischen Entscheidungen (> Holding-Level) gehen durch diesen Workflow:

### Schritt 1: ANALYSE (Claude)
Claude analysiert die Situation und mögliche Optionen

### Schritt 2: EMPFEHLUNG (Claude)
Claude gibt Empfehlung basierend auf Analyse + Rationale

### Schritt 3: ENTSCHEIDUNG (Mark)
**Mark trifft die finale Entscheidung** (Claude ist nicht Entscheidungsträger!)
- JA
- NEIN
- CONDITIONAL (mit Bedingungen)

### Schritt 4: DOKUMENTATION (Claude)
Entscheidung wird dokumentiert in:
1. Dieser Datei (decision-log.md) — Überblick
2. Detaillierter Datei in [[wiki/meta/decisions/|decisions/ folder]] — Vollständige Details
3. [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Impact auf Tasks

### Schritt 5: UMSETZUNG
Tasks werden started/updated basierend auf Entscheidung

---

## 📊 Decision Statistics

| Metrik | Value |
|--------|-------|
| **Total Decisions 2026** | 3+ (im Lauf) |
| **Pending (warten auf Mark)** | 3 |
| **Approved (Mark's Freigabe)** | 0 (yet) |
| **Review Cycle (Phase 2)** | Monatlich ab Sept 2026 |

---

## 🔗 Navigation

- **Index:** [[wiki/meta/decisions/index.md|Decisions Index]] — Navigator pro Entscheidung
- **Governance:** [[wiki/meta/mark-os-governance.md|Mark OS Governance]] — Workflows
- **Master-Actions:** [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Impact
- **Hot Context:** [[wiki/hot.md|Hot Context]] — Aktuelle Fragen/Blockaden
- **Operation Log:** [[wiki/log.md|Operation Log]] — Alle Operations

---

**Status:** 🟡 **ACTIVE** (Phase 1 Entscheidungs-Freigabe)
**Owner:** Mark Markner (Entscheidungen) + Claude (Dokumentation)
**Last Updated:** 2026-08-17
