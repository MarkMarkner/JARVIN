---
type: rule
title: Projekt-Workflow-Action Regel — Standardisiertes Vorgehen für komplexe Projekte
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - governance
  - rule
  - project-management
  - workflow
  - standardization
address: rule-pwa-001
---

# Projekt-Workflow-Action Regel

**Gültig ab:** 2026-08-18  
**Status:** 🟢 **BINDEND & VERBINDLICH**  
**Anwendungsbereich:** Alle komplexen Projekte in JARVIN

---

## 📌 KERNPRINZIP

**Komplexe Projekte folgen IMMER diesem 3-Ebenen-Modell:**

```
📊 PROJEKT (Strategic Level)
    ↓ Links to
🔧 WORKFLOW (Operative Level)
    ↓ Links to
✅ MASTER-ACTION-ITEMS (Action Level)
```

---

## 🎯 DIE 3 EBENEN ERKLÄRT

### **1️⃣ PROJEKT-EBENE — Strategic Overview**

**Datei-Location:** `wiki/projects/[Name].md`

**Inhalt (Was & Warum):**
- ✅ Owner & Status (wer, aktueller Zustand)
- ✅ Ziel & Deadline (was, bis wann)
- ✅ Kritikalität & Impact (warum wichtig)
- ✅ Kritische Meilensteine (Top 3-5 nur!)
- ✅ Team-Rollen & Ressourcen (wer tut was)
- ✅ Risiken & Fallback (was kann schiefgehen)
- ✅ Link zum Workflow (→ Detaillierte Anleitung)

**Nicht enthalten (gehört woanders hin):**
- ❌ Detaillierte Phase-Aufgaben (→ Workflow)
- ❌ Checklisten & Templates (→ Workflow)
- ❌ Todo-Listen (→ Master-Action-Items)

**Zweck:** Schneller Überblick für: "Wo stehen wir? Wer macht was? Welche Risiken?"

**Größe:** ~50-200 Zeilen (nicht 400+!)

---

### **2️⃣ WORKFLOW-EBENE — Operative Details**

**Datei-Location:** `wiki/workflows/[Name]-Workflow.md`

**Inhalt (Wie & Mit Was):**
- ✅ Alle Phasen/Schritte mit Details
- ✅ Konkrete Aufgaben pro Phase
- ✅ Checklisten & Validierungs-Steps
- ✅ Email-Templates, Skripte, Angebots-Vorlagen
- ✅ Ressourcen & externe Links
- ✅ Best Practices & Do's/Don'ts
- ✅ Beispiele & Fallback-Szenarien
- ✅ Back-Link zum Projekt

**Nicht enthalten (gehört woanders hin):**
- ❌ Strategische Entscheidungen (→ Projekt)
- ❌ High-Level Todo-Liste (→ Master-Action-Items)

**Zweck:** Vollständige operative Anleitung für: "Wie führe ich das durch? Welche Schritte? Welche Templates?"

**Größe:** ~500-800 Zeilen (umfassend & detailliert!)

---

### **3️⃣ ACTION-EBENE — Master-Action-Items**

**Datei-Location:** `wiki/meta/Master-Action-Items-2026.md` (eine zentrale Datei!)

**Inhalt (Was Muss Ich Jetzt Machen):**
- ✅ High-Level Todo-Liste pro Projekt
- ✅ 3-7 einfache Aufgaben/Phasen
- ✅ Deadlines & Priorität
- ✅ Status (Pending/In Progress/Done)
- ✅ Links zu Projekt & Workflow
- ✅ Kurze Notizen (max 2 Zeilen pro Item)

**Nicht enthalten:**
- ❌ Detaillierte Aufgaben (→ Workflow)
- ❌ Strategische Infos (→ Projekt)

**Zweck:** Schneller Einstiegspunkt zum Fortfahren: "Was mache ich als nächstes?"

**Größe:** ~5-10 Zeilen pro Projekt (maximal kurz & actionable!)

---

## 🔗 VERLINKUNGSSTRUKTUR

**Von Projekt zu Workflow:**
```markdown
# [Projekt-Name]

Operativer Workflow:
→ Siehe [[wiki/workflows/[Name]-Workflow.md|Workflow Dokumentation]] für:
  - Alle Phasen & Aufgaben
  - Checklisten & Templates
  - Best Practices
```

**Von Workflow zu Projekt:**
```markdown
# [Name] — Operativer Workflow

Projekt-Kontext:
[[wiki/projects/[Name].md|Projekt-Übersicht]] für strategische Infos
```

**Von Master-Action-Items zu Projekt & Workflow:**
```markdown
## [PROJEKT-NAME] — X EINFACHE ACTIONS

- [ ] Phase 1: [Beschreibung]
  Deadline: [Datum]
  Siehe [[wiki/workflows/[Name]-Workflow.md|Workflow]] für Details
```

---

## 🎯 WANN WIRD DIESES VORGEHEN ANGEWENDET?

**Gilt für:**
- ✅ Komplexe Projekte (5+ Phasen, mehrere Stakeholder)
- ✅ Langfristige Projekte (> 1 Monat Timeline)
- ✅ Multi-Team Koordination (externe Partner involved)
- ✅ Wiederholbare Prozesse (Standard Operating Procedures)

**Beispiele (gut geeignet):**
- ✅ IBA-Kommunen-Akquisition (Phase 1-5, 400 Kommunen, Team-Koordination)
- ✅ Fix-und-Flip Workflow (mehrere Schritte, externe Akteure)
- ✅ E-Commerce Onboarding (standardisierter Prozess)
- ✅ GmbH-Gründung (mehrere Phasen, Stakeholder)

**Nicht geeignet für:**
- ❌ Kleine Aufgaben (< 1 Woche, einzelne Person)
- ❌ One-Off Tasks (nicht wiederholbar)
- ❌ Schnelle Entscheidungen (brauchen keine Dokumentation)

---

## 📋 CHECKLISTE: Neues Projekt erstellen

Wenn du ein komplexes Projekt dokumentierst, befolge diese Checkliste:

### Schritt 1: Projekt-Datei erstellen
- [ ] Neue Datei: `wiki/projects/[Name].md`
- [ ] YAML-Frontmatter mit `type: project`
- [ ] Section: Projekt-Kontext (Was? Warum? Wer?)
- [ ] Section: Kritische Meilensteine (Top 3-5)
- [ ] Section: Team-Rollen & Ressourcen
- [ ] Section: Risiken & Fallback
- [ ] Section: Link zum Workflow
- [ ] **Größe-Check:** 50-200 Zeilen (nicht mehr!)

### Schritt 2: Workflow-Datei erstellen
- [ ] Neue Datei: `wiki/workflows/[Name]-Workflow.md`
- [ ] YAML-Frontmatter mit `type: workflow`
- [ ] Section: Alle Phasen (1-5) mit Details
- [ ] Section: Konkrete Aufgaben pro Phase
- [ ] Section: Checklisten & Templates
- [ ] Section: Best Practices & Do's/Don'ts
- [ ] Section: Ressourcen & externe Links
- [ ] Section: Back-Link zum Projekt
- [ ] **Größe-Check:** 500-800 Zeilen (umfassend!)

### Schritt 3: Master-Action-Items hinzufügen
- [ ] Section in `wiki/meta/Master-Action-Items-2026.md`
- [ ] Titel: `[PROJEKT-NAME] — X EINFACHE ACTIONS FÜR MARK`
- [ ] 3-7 einfache Todos (Phasen oder Milestones)
- [ ] Deadline & Priorität pro Todo
- [ ] Links zu Projekt & Workflow
- [ ] **Größe-Check:** 10-15 Zeilen pro Projekt (sehr kurz!)

### Schritt 4: Verlinkung kontrollieren
- [ ] Projekt verlinkt zu Workflow (bidirektional)
- [ ] Workflow verlinkt zu Projekt (bidirektional)
- [ ] Master-Action-Item verlinkt zu Projekt & Workflow
- [ ] Kein gebrochener Link überprüft
- [ ] hot.md aktualisiert (falls aktuell/relevant)

### Schritt 5: Session abschließen
- [ ] Entry in `wiki/log.md` (neue Projekt-Dateien)
- [ ] Commit mit aussagekräftiger Message
- [ ] Push zu GitHub

---

## ✅ VALIDIERUNGS-CHECKLISTE (Vor Session-Ende)

Wenn du ein Projekt mit diesem Vorgehen dokumentierst, nutze diese Checkliste vor dem Commit:

```
PROJEKT-DATEI:
  [ ] Größe: 50-200 Zeilen (nicht zu lang!)
  [ ] Owner & Status: Oben dokumentiert
  [ ] Ziel & Deadline: Klar definiert
  [ ] Kritische Meilensteine: Top 3-5 nur
  [ ] Team-Rollen: Wer tut was
  [ ] Risiken & Fallback: Dokumentiert
  [ ] Link zum Workflow: Vorhanden
  [ ] Keine Detailfragen (→ gehören in Workflow)

WORKFLOW-DATEI:
  [ ] Größe: 500-800 Zeilen (umfassend)
  [ ] Alle Phasen: Mit konkreten Aufgaben
  [ ] Checklisten: Pro Phase
  [ ] Templates: Email, Skripte, etc.
  [ ] Best Practices: Do's/Don'ts
  [ ] Back-Link zum Projekt: Vorhanden
  [ ] Keine strategischen Infos (→ gehören in Projekt)

MASTER-ACTION-ITEMS:
  [ ] Sektion erstellt: [PROJEKT-NAME]
  [ ] Anzahl Todos: 3-7 (kurz & actionable)
  [ ] Jedes Todo: Deadline & Priorität
  [ ] Jedes Todo: Link zu Workflow
  [ ] Größe: 10-15 Zeilen nur (sehr kurz!)

VERLINKUNG:
  [ ] Projekt → Workflow: Link vorhanden
  [ ] Workflow → Projekt: Link vorhanden
  [ ] Master-Action → Projekt: Link vorhanden
  [ ] Master-Action → Workflow: Link vorhanden
  [ ] Alle Links gültig (nicht gebrochen)
  [ ] hot.md aktualisiert (falls relevant)

DOCUMENTATION:
  [ ] log.md aktualisiert: Neue Projekt
  [ ] Commit-Message beschreibend
  [ ] Tags in Frontmatter: project, workflow
  [ ] Deutsche Sprache (+ Englisch Fachbegriffe)
```

---

## 🎯 BEISPIEL: Kompletter Workflow

**Szenario:** Du dokumentierst ein neues "Mark-OS Integration Projekt"

### Schritt 1: Projekt erstellen
```
wiki/projects/Mark-OS-Integration.md

---
type: project
title: Mark OS Integration — Desktop Cockpit Setup
---

# Mark OS Integration

**Owner:** Mark Markner  
**Status:** 🟡 IN PROGRESS  
**Ziel:** Desktop Cockpit (REST API + Web UI)  
**Deadline:** 2026-12-31

## Kritische Meilensteine
- REST API ready (Oct 31)
- Web UI Beta (Nov 30)
- Erste Workflows integriert (Dec 15)

## Team-Rollen
- Mark: Strategy
- Claude: Implementation Support
- External: Frontend Devs (optional)

## Risiken
- Timeline Verzögerung (Fallback: Timeline verschieben)
- API Komplexität (Fallback: Simpler API Start)

Operativer Workflow:
→ [[wiki/workflows/Mark-OS-Integration-Workflow.md|Workflow]]
```

### Schritt 2: Workflow erstellen
```
wiki/workflows/Mark-OS-Integration-Workflow.md

---
type: workflow
title: Mark OS Integration — Operativer Workflow
---

# Mark OS Integration — Workflow

**Ziel:** REST API + Web UI für JARVIN-Integration

## Phase 1: REST API Design & Setup
### 1.1: API Endpoints definieren
- [ ] Alle Endpoints spezifizieren (GET /projects, POST /actions, etc.)
- [ ] Request/Response Schemas schreiben
- Siehe Checkliste unten...

## Phase 2: Implementation
...

## 📋 Email-Template
Für externe Devs:

"Sehr geehrte[r] [Name],

die Mark OS Integration braucht REST API Support.
..."

## Best Practices
...
```

### Schritt 3: Master-Action-Items hinzufügen
```
wiki/meta/Master-Action-Items-2026.md

## 🎯 MARK-OS-INTEGRATION — 5 EINFACHE ACTIONS

- [ ] Phase 1: REST API Design (2026-10-15)
  Siehe [[wiki/workflows/...]] für Details

- [ ] Phase 2: API Implementation (2026-11-15)
  Siehe Workflow...

...
```

### Schritt 4: Verlinkung & Commit
```bash
# Links überprüfen
# log.md aktualisiert
git add wiki/projects/Mark-OS-Integration.md \
        wiki/workflows/Mark-OS-Integration-Workflow.md \
        wiki/meta/Master-Action-Items-2026.md \
        wiki/log.md

git commit -m "docs: Mark OS Integration Projekt erstellen

Neues Projekt mit vollständiger Dokumentation:
- Projekt-Übersicht: Strategic Goals & Timeline
- Workflow: Operative Details & Checklisten
- Master-Action-Items: Einfache TODO für Mark zum Fortfahren
..."
```

---

## 📊 VERGLEICH: ALT vs. NEU

### ❌ ALT (Chaotisch):
```
Project-Datei = 400+ Zeilen mit allen Details
Workflow = Nicht vorhanden oder doppelt
Master-Items = Nicht vorhanden
→ Mark weiß nicht, wo er anfangen soll!
```

### ✅ NEU (Strukturiert):
```
Projekt (70 Zeilen): "Wo stehen wir? Wer macht was?"
Workflow (650 Zeilen): "Wie mache ich das? Schritt-für-Schritt"
Master-Items (12 Zeilen): "Was mache ich jetzt? Einfache TODO"
→ Mark hat klaren Einstiegspunkt & Zugang zu Details!
```

---

## 🚀 ADOPTION-PLAN

### Sofort gültig (2026-08-18):
- ✅ Alle neuen Projekte folgen diesem Vorgehen
- ✅ IBA-Kommunen-Akquisition ist Pilot-Beispiel
- ✅ Verbindlich & nicht optional

### Zukünftig (Sept 2026):
- [ ] Audit: Alle bestehenden Projekte entsprechend?
- [ ] Refactor: Alte Projekte anpassen (wenn nötig)
- [ ] Dokumentation erweitern (bei Bedarf)

---

## 📌 HÄUFIG GESTELLTE FRAGEN

### F: Wann MUSS ich dieses 3-Ebenen-Modell verwenden?

**A:** 
- ✅ MUSS: Komplexe Projekte (5+ Phasen, >1 Monat, mehrere Stakeholder)
- ⏸️ OPTIONAL: Einfache Projekte (<1 Woche, einzelne Person)
- ❌ NICHT: One-Off Tasks oder schnelle Entscheidungen

### F: Was wenn mein Projekt nur 2 Phasen hat?

**A:** Du brauchst trotzdem alle 3 Ebenen:
- Projekt: Strategische Übersicht
- Workflow: Operative Details (auch wenn kurz)
- Master-Items: Todo zum Fortfahren

### F: Kann ich Projekt & Workflow zusammenfassen?

**A:** Nein! Die Trennung ist wichtig:
- Projekt = Strategic (Owner, Timeline, Risks)
- Workflow = Operative (Step-by-Step, Checklisten, Templates)

Diese Trennung ermöglicht: "Schneller Überblick" vs. "Detaillierte Anleitung"

### F: Wie oft soll ich Master-Action-Items updaten?

**A:** Nach jedem Session-Abschluss oder Meilenstein:
- Eine zentrale Datei, nicht mehrere Listen!
- Status aktualisieren (Pending → In Progress → Done)
- Neue Todos hinzufügen (wenn nötig)

---

## 🎁 TEMPLATES ZUM KOPIEREN

**Projekt-Template:**
```markdown
---
type: project
title: [NAME] — [Kurzbeschreibung]
status: active
---

# [NAME]

**Owner:** [Wer]
**Status:** 🟢 [Status]
**Ziel:** [Was bis wann]
**Kritikalität:** [Warum wichtig]

## Kritische Meilensteine
- Meilenstein 1 (Datum)
- Meilenstein 2 (Datum)
- Meilenstein 3 (Datum)

## Team-Rollen
| Person | Rolle | Aufwand |
| Mark | Strategie | 50h |

## Risiken & Fallback
| Risiko | Mitigation |

Operativer Workflow:
→ [[wiki/workflows/[NAME]-Workflow.md|Workflow]]
```

**Workflow-Template:**
```markdown
---
type: workflow
title: [NAME] — Operativer Workflow
---

# [NAME] — Operativer Workflow

**Ziel:** [Was]
**Timeline:** [Von-Bis]
**Owner:** [Wer]

## Phase 1: [Name]
### 1.1: [Aufgabe]
- [ ] Schritt 1
- [ ] Schritt 2

## Templates
[Email, Skripte, etc.]

## Best Practices
[Do's/Don'ts]

Projekt-Kontext:
[[wiki/projects/[NAME].md|Projekt-Übersicht]]
```

**Master-Action-Item Template:**
```markdown
## [PROJEKT-NAME] — X EINFACHE ACTIONS

- [ ] Phase 1: [Kurze Beschreibung]
  Deadline: [Datum]
  Siehe [[wiki/workflows/[NAME]-Workflow.md|Workflow]] für Details

- [ ] Phase 2: [Kurze Beschreibung]
  Deadline: [Datum]
  Siehe Workflow...
```

---

## 🎯 ZUSAMMENFASSUNG

**Die Regel in 3 Sätzen:**

1. **Projekt** = Strategic Overview (Was? Wer? Warum? Wann?)
2. **Workflow** = Operative Details (Wie? Mit Was? Checklisten? Templates?)
3. **Master-Action-Items** = Quick Entry Point zum Fortfahren (Was mache ich jetzt?)

**Die Verlinkung ist entscheidend:** Projekt ↔ Workflow ↔ Master-Items (bidirektional)

**Anwendung:** Jedes komplexe Projekt folgt diesem Muster. Standard-Checkliste bei Session-Ende.

---

**Status:** 🟢 **BINDEND & VERBINDLICH**  
**Gültig ab:** 2026-08-18  
**Owner:** Mark Markner + Claude  
**Letztes Update:** 2026-08-18

*Diese Regel standardisiert den bewährten Ansatz für die Dokumentation komplexer Projekte in JARVIN.*
