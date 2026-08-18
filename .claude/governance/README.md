---
type: meta
title: JARVIN Governance Rules — System-Richtlinien
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - governance
  - rules
  - system
  - jarvin
address: governance-readme-001
---

# JARVIN Governance Rules

**Zweck:** Zentrale Sammlung aller System-Regeln & Governance-Richtlinien für JARVIN

**Bereich:** Wie JARVIN intern funktioniert (nicht Mark OS Business-Governance)

**Navigation:**
→ Siehe [[rules-index.md|Rules Index]] für komplette Übersicht aller Regeln

---

## 📋 AKTUELLE RULES

### **01. Sprachrichtlinie**
[[01-sprachrichtlinie.md|Lese die Regel]]

**Zweck:** Konsistente deutsche Dokumentation in JARVIN  
**Gültig ab:** 2026-08-18  
**Status:** 🟢 Bindend

---

### **02. Workflow-Organisierungsregel**
[[02-workflow-organization-rule.md|Lese die Regel]]

**Zweck:** Wo gehören Workflows hin (dezentralisiert in wiki/workflows/)  
**Gültig ab:** 2026-08-18  
**Status:** 🟢 Bindend

---

### **03. Projekt-Workflow-Action Regel**
[[03-project-workflow-action-rule.md|Lese die Regel]]

**Zweck:** Standardisiertes 3-Ebenen-Vorgehen für komplexe Projekte  
**Gültig ab:** 2026-08-18  
**Status:** 🟢 Bindend

---

### **04. Wartungsroutine**
[[04-wartungsroutine.md|Lese die Regel]]

**Zweck:** Tägliche Integritätsprüfung des Vaults über Script  
**Werkzeug:** `bash .claude/scripts/vault-lint.sh`  
**Gültig ab:** 2026-08-18  
**Status:** 🟢 Bindend

---

## 🗂️ STRUKTUR DIESER ORDNER

```
.claude/governance/
├── README.md (Diese Datei)
├── rules-index.md (Detaillierter Index)
├── 01-sprachrichtlinie.md
├── 02-workflow-organization-rule.md
├── 03-project-workflow-action-rule.md
└── 04-wartungsroutine.md

.claude/scripts/
└── vault-lint.sh (Prüf-Script zu Regel 04)
```

---

## 🎯 WANN WAS LESEN?

| Situation | Lese diese Regel |
|-----------|-----------------|
| "In welcher Sprache dokumentiere ich?" | 01-sprachrichtlinie |
| "Wo speichere ich Workflows?" | 02-workflow-organization-rule |
| "Wie dokumentiere ich komplexe Projekte?" | 03-project-workflow-action-rule |
| "Ist der Vault noch sauber?" | 04-wartungsroutine |
| "Ich benenne etwas um — was beachten?" | 04-wartungsroutine (Prävention) |
| "Übersicht aller Regeln?" | rules-index.md |

---

## 📌 WICHTIG

**Diese Regeln sind BINDEND.**  
Sie gelten für alle neue Dokumentation in JARVIN.

**Fragen?**  
Siehe die jeweilige Regel oder [[../../../wiki/hot.md|hot.md]] für aktuelle Infos.

---

**Status:** 🟢 Aktiv  
**Zuletzt aktualisiert:** 2026-08-18  
**Owner:** Mark Markner + Claude  
**Related:** [[../../../wiki/meta/governance/|Mark OS Governance]] (Business-Governance)

