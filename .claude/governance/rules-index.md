---
type: meta
title: JARVIN Governance Rules — Detaillierter Index
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - governance
  - index
  - rules
address: governance-index-001
---

# JARVIN Governance Rules — Detaillierter Index

**Zweck:** Vollständige Übersicht aller System-Regeln & Governance-Richtlinien

**Bereich:** Interne JARVIN Regeln (wie wir dokumentieren, organisieren, projekte managen)

---

## 🎯 ALLE REGELN (Übersicht)

### **01. Sprachrichtlinie** — Deutsch + Englisch Fachbegriffe
[[01-sprachrichtlinie.md|Zur vollständigen Regel →]]

| Aspekt | Details |
|--------|---------|
| **Gültig ab** | 2026-08-18 |
| **Status** | 🟢 Bindend |
| **Anwendungsbereich** | ALLE Dokumentation in JARVIN |
| **Kern-Regel** | Konsistent Deutsch schreiben + englische Fachbegriffe erlaubt |
| **Beispiel** | ✅ "Context-Automation in der Session" statt ❌ "Context Automatisierung" |
| **Ausnahmen** | YAML-Feldnamen bleiben englisch (Standard) |

**Wer sollte das lesen?**
- Jeder, der in JARVIN dokumentiert
- Vor dem Schreiben von Notizen/Dokumentation lesen

---

### **02. Workflow-Organisierungsregel** — Dezentralisierte Workflows
[[02-workflow-organization-rule.md|Zur vollständigen Regel →]]

| Aspekt | Details |
|--------|---------|
| **Gültig ab** | 2026-08-18 |
| **Status** | 🟢 Bindend |
| **Anwendungsbereich** | ALLE Projekt-Workflows |
| **Kern-Regel** | Workflows gehören in `wiki/workflows/` (NICHT in `.claude/`) |
| **Struktur** | `wiki/workflows/[Name]-Workflow.md` |
| **Definition** | Ein Workflow = operativer Prozess für ein spezifisches Projekt |
| **Ausnahme** | System-Workflows (Automation) können in `.claude/` sein |

**Wer sollte das lesen?**
- Wenn du einen Workflow dokumentierst
- Wenn du fragst "wo speichere ich das?"

**Gute Beispiele:**
- ✅ `wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md`
- ✅ `wiki/workflows/Fix-und-Flip-Akquisition-Workflow.md`

---

### **03. Projekt-Workflow-Action Regel** — 3-Ebenen-Modell
[[03-project-workflow-action-rule.md|Zur vollständigen Regel →]]

| Aspekt | Details |
|--------|---------|
| **Gültig ab** | 2026-08-18 |
| **Status** | 🟢 Bindend |
| **Anwendungsbereich** | Komplexe Projekte (5+ Phasen, >1 Monat) |
| **Kern-Regel** | 3 Ebenen: Projekt → Workflow → Master-Action-Items |
| **Größen** | Projekt (~70 Z.), Workflow (~650 Z.), Action (~12 Z.) |
| **Verlinkung** | Bidirektional (Projekt ↔ Workflow ↔ Master-Items) |

**3-Ebenen erklärt:**

```
📊 PROJEKT (Strategic Level)
   "Wo stehen wir? Wer macht was? Wann fertig?"
   Owner, Status, Ziel, Meilensteine, Risiken

🔧 WORKFLOW (Operative Level)
   "Wie mache ich das? Schritt-für-Schritt?"
   Phasen, Aufgaben, Checklisten, Templates

✅ MASTER-ACTION-ITEMS (Action Level)
   "Was mache ich jetzt?"
   Einfache TODO zum Fortfahren (max 7 pro Projekt)
```

**Wer sollte das lesen?**
- Wenn du ein komplexes Projekt dokumentierst
- Vor Session-Ende (Validierungs-Checkliste!)

**Pilot-Beispiel:** IBA-Kommunen-Akquisition ✅

---

### **04. Wartungsroutine** — Tägliche Integritätsprüfung
[[04-wartungsroutine.md|Zur vollständigen Regel →]]

| Aspekt | Details |
|--------|---------|
| **Gültig ab** | 2026-08-18 |
| **Status** | 🟢 Bindend |
| **Anwendungsbereich** | Gesamter Vault |
| **Kern-Regel** | Tägliche Prüfung über Script, nicht ad-hoc |
| **Werkzeug** | `bash .claude/scripts/vault-lint.sh` |
| **Frequenz** | Täglich einmal (bei Session-Start oder -Ende) |
| **Dauer** | 10–20 Sekunden |

**Prüft:** Defekte Links · Frontmatter · Orphans · Session-Index · Git-Hygiene · Projekt-Größen

**Prävention (wichtigster Teil):** Bei jeder Umbenennung erst
`grep -rn "alter-name"`, dann alle Referenzen aktualisieren, dann Lint,
dann committen.

**Wer sollte das lesen?**
- Vor jedem Refactor
- Bei Session-Start und -Ende

---

## 📊 REGELMATRIX

| Regel | Typ | Bindung | Anwendungsbereich | Häufigkeit |
|-------|-----|---------|-------------------|-----------|
| Sprachrichtlinie | Language | 🔴 Bindend | ALLE Dokumente | Always |
| Workflow-Org | Organization | 🔴 Bindend | Projekt-Workflows | Neue Workflows |
| Projekt-Workflow-Action | Process | 🔴 Bindend | Komplexe Projekte | Neue Projekte |
| Wartungsroutine | Quality | 🔴 Bindend | Gesamter Vault | Täglich |

---

## 🚀 QUICK-START: WELCHE REGEL BRAUCHE ICH?

```
❓ Frage                              → Lese diese Regel
─────────────────────────────────────────────────────────
"Soll ich Deutsch oder English schreiben?"  → 01-sprachrichtlinie
"Wo speichere ich den Workflow?"            → 02-workflow-organization-rule
"Wie dokumentiere ich mein Projekt?"        → 03-project-workflow-action-rule
"Ist der Vault noch sauber?"                → 04-wartungsroutine
"Ich benenne eine Datei um — was beachten?" → 04-wartungsroutine (Prävention)
"Alle Regeln auf einen Blick?"              → Du bist hier! (rules-index.md)
```

---

## 🎯 ADOPTION-PLAN

### **Sofort gültig (2026-08-18):**
- ✅ Alle neuen Dokumentation folgt diesen Regeln
- ✅ Bindend & nicht optional
- ✅ Gültig für Mark, Claude, zukünftige Mitarbeiter

### **Zukünftig (Sept 2026):**
- [ ] Audit: Bestehende Dokumente konform?
- [ ] Refactor: Alte Dokumente anpassen (bei Bedarf)

---

## 📌 HÄUFIG GESTELLTE FRAGEN

### F: "Was wenn ich nicht alle Regeln folge?"

**A:** Bitte folge ALLE Regeln:
- Sie sind bindend (nicht optional)
- Sie machen Dokumentation konsistent & wartbar
- Sie sparen Zeit (keine Verwirrung über Format/Ort)

### F: "Kann ich Regeln ändern?"

**A:** Neue Regeln brauchen:
1. Eine Analyse (Warum brauchen wir neue Regel?)
2. Eine Dokumentation (Diese Datei + Detail-Datei)
3. Ein Commit (mit Rationale)
4. Verständigung mit Mark (Bindung?)

### F: "Was ist mit bestehenden Dokumenten?"

**A:** 
- Neu: Folgen diesen Regeln ab sofort
- Alt: Anpassung im Sept 2026 (nicht dringend)

---

## 🔗 NAVIGATION

**Governance-Struktur:**
- Diese Datei: Detaillierter Index
- [[README.md|README]]: Kurz-Übersicht
- Jede Regel: Vollständige Details + Checklisten

**Verwandte Bereiche:**
- [[../../../wiki/meta/governance/|Mark OS Governance]] (Business Decisions)
- [[../../../wiki/hot.md|Hot Context]] (Aktuelle Infos)
- [[../../../wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] (Tasks)

---

**Status:** 🟢 Aktiv  
**Zuletzt aktualisiert:** 2026-08-18  
**Owner:** Mark Markner + Claude  
**Bindung:** 🔴 BINDEND

*Alle Regeln in dieser Ordner sind verbindlich für die Dokumentation in JARVIN.*

