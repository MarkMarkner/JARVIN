---
type: rule
title: Workflow-Organisierungsregel — Dezentrale Struktur
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - governance
  - rule
  - workflow
  - organization
  - architecture
address: rule-workflows-001
---

# Workflow-Organisierungsregel

**Gültig ab:** 2026-08-18  
**Status:** 🟢 **BINDEND**  
**Anwendungsbereich:** Alle Projekt-Workflows in JARVIN

---

## 📌 KERNREGEL

**Alle Projekt-Workflows gehören in `wiki/workflows/` — NICHT in `.claude/`**

```
❌ FALSCH:
.claude/iba-kommunen-kontakt-workflow.md

✅ RICHTIG:
wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md
```

---

## 🎯 DEFINITION: Was ist ein "Workflow"?

Ein **Workflow** ist:
- ✅ Operativer Prozess für ein spezifisches Projekt
- ✅ Schritt-für-Schritt Anleitung (nicht System-Config)
- ✅ Akteur-fokussiert (Mark, Vertriebsteam, etc.)
- ✅ Zeitgebunden (konkrete Deadlines & Milestones)
- ✅ Wiederholbar & dokumentierbar

Beispiele:
- ✅ Kommunen-Kontaktierungs-Workflow (IBA Phase 0.2)
- ✅ Fix-und-Flip Akquisitions-Workflow
- ✅ E-Commerce Onboarding-Workflow
- ✅ Mark-OS Integration-Workflow

Ist das kein Workflow?
- ❌ Sprachrichtlinie (System-Rule → `.claude/`)
- ❌ System-Kohärenz-Analyse (System-Audit → `.claude/`)
- ❌ Daily-Workflow-Briefing (System-Anleitung → `.claude/`)
- ❌ Automation-Konfiguration (System-Config → `.claude/`)

---

## 📁 ARCHITEKTUR-REGEL

### `.claude/` — NUR System & Meta

```
.claude/ (System Configuration & Rules)
├── sprachrichtlinie.md                    ✅ Sprach-Regeln
├── workflow-organization-rule.md          ✅ Diese Datei!
├── system-coherence-analysis.md           ✅ System-Audits
├── daily-workflow-briefing.md             ✅ Anleitung für Nutzer
├── phase-4-5-analyse.md                   ✅ Strategische Decisions
├── automation-master.md                   ✅ Automation-Config
├── context-loading-workflow.md            ✅ System-Workflow (Automation)
└── [Weitere System-Dokumente]             ✅ Nur Meta-Level!

REGEL: Nur Dokumente, die JARVIN selbst betreffen, nicht die Arbeit mit Projekten!
```

### `wiki/workflows/` — ALLE Projekt-Workflows

```
wiki/workflows/ (Operationale Projekt-Workflows)
├── IBA-Kommunen-Kontakt-Workflow.md       ✅ Phase 0.2 Operativ
├── Fix-und-Flip-Akquisition-Workflow.md   ✅ Zukünftig
├── E-Commerce-Onboarding-Workflow.md      ✅ Zukünftig
├── Mark-OS-Integration-Workflow.md        ✅ Zukünftig
└── [Weitere Projekt-Workflows]            ✅ Alle hier!

REGEL: Jeder Projekt-Workflow hat eine Datei hier!
```

### `wiki/projects/` — Projekt-Management

```
wiki/projects/ (Projekt-Übersicht & Management)
├── IBA-Initiative-Bau-Archiv.md           ✅ Entity + Status
├── IBA-Kommunen-Akquisition.md            ✅ Verlinkt → wiki/workflows/IBA-...
├── Fix-und-Flip-Masterclass-2026.md       ✅ Verlinkt → zukünftiger Workflow
└── [Weitere Projekte]                     ✅ Alle mit Workflow-Links

REGEL: Projekt-Datei verlinkt zu Workflow-Datei (bidirektional!)
```

---

## 🔗 VERLINKUNGSREGEL

**Projekt ↔ Workflow: Bidirektionale Links**

### Von Projekt zu Workflow:

**`wiki/projects/IBA-Kommunen-Akquisition.md`:**
```markdown
## Operativer Workflow

Siehe: [[wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md|Detaillierter Workflow]]
```

### Von Workflow zu Projekt:

**`wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md`:**
```markdown
**Projekt-Kontext:** [[wiki/projects/IBA-Kommunen-Akquisition.md|IBA Projekt]]
```

### In hot.md (Breaking News):

```markdown
**Dokumentation:**
- [[wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md|Operativer Workflow]]
- [[wiki/projects/IBA-Kommunen-Akquisition.md|Projekt-Management]]
```

---

## 📝 NAMING-CONVENTION

**Workflow-Datei-Namen:**

```
✅ RICHTIG:
wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md
wiki/workflows/Fix-und-Flip-Akquisition-Workflow.md
wiki/workflows/E-Commerce-Onboarding-Workflow.md

❌ FALSCH:
wiki/workflows/workflow-iba.md (zu generisch)
wiki/workflows/iba-workflow.md (Namen falsch sortiert)
wiki/workflows/IBA-Workflow.md (ohne Spezifik)
```

**Format:**
- `[Projekt-Name]-[Prozess-Beschreibung]-Workflow.md`
- Großbuchstaben (Title Case)
- Vollständiger Pfad: `wiki/workflows/`

---

## 📋 CHECKLISTE: Neue Workflows erstellen

Wenn du einen neuen Workflow dokumentierst, befolge diese Checkliste:

### Schritt 1: Datei erstellen
- [ ] Neue Datei: `wiki/workflows/[Name]-Workflow.md`
- [ ] YAML-Frontmatter mit `type: workflow`
- [ ] Titel: `[Projekt] — Operativer Workflow`

### Schritt 2: Struktur & Inhalte
- [ ] Ziel & Timeline dokumentiert
- [ ] Owner & Rollen definiert
- [ ] 3-5 Phasen/Schritte mit Aufgaben
- [ ] Meilensteine & Checkpoints
- [ ] Tools & Ressourcen dokumentiert
- [ ] Best Practices & Do's/Don'ts
- [ ] Templates & Beispiele enthalten

### Schritt 3: Verlinkung
- [ ] Link in zugehörigem Projekt hinzufügen
- [ ] Link in `wiki/hot.md` (wenn aktuell/relevant)
- [ ] Rück-Link vom Workflow zum Projekt

### Schritt 4: Dokumentation
- [ ] Entry in `wiki/log.md` (neue Datei dokumentiert)
- [ ] Tag in Frontmatter: `tags: [workflow, ...]`
- [ ] Status: `status: active`

### Schritt 5: Commit
- [ ] Commit mit aussagekräftiger Message
- [ ] Push zu GitHub

---

## 🎯 BEISPIEL: Kompletter Workflow

**Szenario:** Du dokumentierst einen neuen E-Commerce-Workflow

**Schritt 1: Datei erstellen**
```
vim wiki/workflows/E-Commerce-Onboarding-Workflow.md
```

**Schritt 2: Frontmatter + Inhalt**
```yaml
---
type: workflow
title: E-Commerce Onboarding — Vollständiger Workflow
status: active
tags: [ecommerce, workflow, onboarding]
address: workflow-ecommerce-001
---
```

**Schritt 3: Verlinkung in Projekt**
```
wiki/projects/E-Commerce-Akquisition-2026.md:

## Operativer Workflow

Siehe: [[wiki/workflows/E-Commerce-Onboarding-Workflow.md|Detaillierter Workflow]]
```

**Schritt 4: Dokumentation in log.md**
```
### op-workflow-ecommerce-001 | workflow
**Typ**: E-Commerce Onboarding Workflow erstellt
**Datei**: wiki/workflows/E-Commerce-Onboarding-Workflow.md
**Status**: ✅ CREATED & LINKED
```

**Schritt 5: Commit**
```bash
git add wiki/workflows/E-Commerce-Onboarding-Workflow.md \
        wiki/projects/E-Commerce-Akquisition-2026.md \
        wiki/log.md

git commit -m "docs: Create E-Commerce Onboarding Workflow

New operatival workflow for E-Commerce acquisition phase.
Linked from wiki/projects/E-Commerce-Akquisition-2026.md
..."
```

---

## ✅ VALIDIERUNGS-CHECKLISTE

Vor dem Commit: Überprüfe jeden neuen Workflow mit dieser Checkliste!

```
Datei-Struktur:
  [ ] Location: wiki/workflows/
  [ ] Name-Format: [Projekt]-[Prozess]-Workflow.md
  [ ] Frontmatter: type=workflow, status, tags
  
Inhalts-Struktur:
  [ ] Ziel & Timeline oben dokumentiert
  [ ] Owner & Rollen klar
  [ ] 3-5 Phasen mit konkreten Tasks
  [ ] Meilensteine mit Deadlines
  [ ] Tools & Ressourcen aufgelistet
  
Verlinkung:
  [ ] Link in zugehörigem Projekt
  [ ] Rück-Link vom Workflow zum Projekt
  [ ] Link in hot.md (falls aktuell)
  [ ] Kein gebrochener Link überprüft
  
Dokumentation:
  [ ] Entry in wiki/log.md
  [ ] Commit-Message beschreibend
  [ ] Tags in Frontmatter
  
Sauberer Code:
  [ ] Korrekte Markdown-Syntax
  [ ] Wikilinks [[...]] statt [...]
  [ ] Deutsche Sprache (+ Englisch Fachbegriffe)
  [ ] Konsistent mit anderen Workflows
```

---

## 🚀 ADOPTION-PLAN

### Sofort gültig (2026-08-18):
- ✅ Neue Workflows in `wiki/workflows/`
- ✅ Alte `.claude/`-Workflows migieren (schon gemacht!)
- ✅ Alle neuen Projekte folgen dieser Regel

### Zukünftig (Sept 2026):
- [ ] Audit: Alle Workflows korrekt platziert?
- [ ] Dokumentation erweitern (bei Bedarf)
- [ ] Weitere Workflow-Beispiele hinzufügen

---

## 📌 HÄUFIG GESTELLTE FRAGEN

### F: Gehört ein Workflow in `.claude/` oder `wiki/workflows/`?

**A:** Frage dich: "Betrifft das JARVIN selbst oder ein Projekt?"
- Betrifft JARVIN → `.claude/` (System-Automation, Config, Regeln)
- Betrifft Projekt → `wiki/workflows/` (Operativ)

### F: Was ist der Unterschied zwischen Workflow & Projekt?

**A:**
- **Projekt** = Management + Status (wiki/projects/)
- **Workflow** = Operative Anleitung (wiki/workflows/)
- **Projekte verlinken zu Workflows** (bidirektional)

### F: Kann ein Projekt mehrere Workflows haben?

**A:** Ja! Ein Projekt kann mehrere Workflows haben:
```
wiki/projects/IBA-Initiative-Bau-Archiv.md
  ↓ verlinkt zu
  - wiki/workflows/IBA-Kommunen-Kontakt-Workflow.md
  - wiki/workflows/IBA-Platform-Entwicklung-Workflow.md
  - wiki/workflows/IBA-Pitch-Meeting-Workflow.md
```

### F: Darf ich Workflows in anderen Ordnern haben?

**A:** Nein. Alle Workflows gehören in `wiki/workflows/`. Das ist bindend.

---

## 📋 ÄNDERUNGSHISTORIE

| Datum | Change | Status |
|-------|--------|--------|
| 2026-08-18 | Regel erstellt nach Refactor | ✅ AKTIV |

---

## 🔗 VERKNÜPFUNGEN

- [[.claude/sprachrichtlinie.md|Sprachrichtlinie]] (Verwandte Regel)
- [[wiki/workflows/|Workflows Ordner]] (Alle Workflows)
- [[wiki/projects/|Projects Ordner]] (Alle Projekte)

---

**Status:** 🟢 **BINDEND & AKTIV**  
**Gültig ab:** 2026-08-18  
**Owner:** Mark Markner + Claude  
**Letztes Update:** 2026-08-18

*Diese Regel ist verbindlich für alle neuen Workflows in JARVIN.*
