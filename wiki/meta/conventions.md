---
type: meta
title: Conventions & Guidelines
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - wiki
  - conventions
  - guidelines
address: meta-001
---

# JARVEN Conventions & Guidelines

Standards und Best Practices für die Verwendung und Wartung der JARVEN-Wissensbasis.

---

## 📝 Frontmatter-Konventionen

Alle Markdown-Seiten verwenden flaches YAML mit pluralen Keys und `YYYY-MM-DD` Datumsformat:

### Erforderliche Felder
```yaml
---
type: entity|concept|question|source|session|meta|overview|fold
title: Human-Readable Title
status: [Status-Code]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - domain-tag
  - topic-tag
---
```

### Optionale Felder
```yaml
aliases:
  - Alternative Name
  - Another Name
address: entity-000001
```

### Status-Codes
- `seed` — Neu, minimal Content
- `active` — In Gebrauch, regelmäßig aktualisiert
- `developing` — Aktive Arbeit, noch nicht stabil
- `evergreen` — Selten geändert, dauerhaft relevant
- `answered` — Question mit vollständiger Antwort
- `provisional` — Tentative, subject to change
- `contested` — Multiple viewpoints, unresolved
- `deprecated` — Veraltet, Nachfolger verweisen
- `archived` — Historisch, selten referenziert

### Page Types

| Type | Zweck | Beispiel |
|------|-------|---------|
| `source` | Nachverfolgbare Zusammenfassung einer Quelle | Claude-Obsidian Spec |
| `entity` | Person, Org, Produkt, Projekt | Mark Markner, Anthropic |
| `concept` | Idee, Framework, Definition | PARA-Method, Systems Thinking |
| `question` | Scoped Q&A mit Evidence-Status | How to prioritize projects |
| `comparison` | Kriteriengestützte Gegenüberstellung | LLM Models Comparison |
| `session` | Benutzer-genehmigte Gesprächszusammenfassung | Session: Planning JARVEN |
| `overview` | High-Level Karte einer Domäne | JARVEN Overview |
| `meta` | Index, Log, Cache, Convention | This Page |
| `fold` | Extractive Rollup von Log-Einträgen | Monthly Summary Fold |

---

## 🔗 Linking-Konventionen

### Interne Verlinkung

**Basis-Links**:
```markdown
[[Target Page]]
[[folder/Target Page]]
[[Alias|Target Page]]
```

**Zum Titel-Link verwenden**:
```markdown
[[Entity Name]]  — wenn Name eindeutig
[[domain/Entity Name]]  — wenn Dubletten existieren
```

**Mit Aliasing**:
```markdown
[[ai/Claude|Claude Sonnet]]  — zeigt "Claude Sonnet", verlinkt auf ai/Claude
```

**Headings & Blöcke**:
```markdown
[[Claude-Obsidian Spec#Schema]]
[[Entity Name#^key-point]]
```

**Einbettungen**:
```markdown
![[Image Name.png]]
![[diagram.svg]]
![[Source Name#Relevant Section]]
```

### Backlinks — Regel der Absicht

- ✅ Füge Links hinzu, wenn sie beim **Navigieren** oder **Verstehen** von Beziehungen helfen
- ❌ Erstelle nicht künstlich symmetrische Backlinks nur für die Graphik
- ✅ Link-Text folgt der Referenz: `[[concept]]` oder `[[entity|displayed name]]`
- ❌ Verwende keine längeren Paths, wenn Basename eindeutig ist

### Callouts (Obsidian-Syntax)

```markdown
> [!INFO] Title
> Content

> [!WARNING] Attention
> Important constraint

> [!EXAMPLE] Illustration
> Concrete case

> [!QUESTION] Unresolved
> Open question
```

---

## 📂 Dateibenennungs-Konventionen

### Page Naming

- **CamelCase oder Title Case**: `Claude-Obsidian Spec`, `Mark Markner`, `PARA-Method`
- **Spaces OK**: Obsidian konvertiert zu Underscores in Paths, Links nutzen Spaces
- **Keine unnötigen Präfixe**: `Entity Person - John Doe` ❌ → `John Doe` ✅
- **Eindeutige Basenames bevorzugt**: `Claude` > `ai/Claude` (wenn keine Dubletten)

### Folder Structure

```
wiki/
├── sources/      — Source-Summaries
├── entities/     — People, Orgs, Products, Projects
├── concepts/     — Ideas, Frameworks, Knowledge
├── questions/    — Q&As with Evidence
├── canvases/     — Diagrams & Visual Structures
└── meta/         — Maintenance & Configuration
```

### Organisational Tags

**Domänen** (Primary):
- `#people` — Person-related
- `#organizations` — Org-related
- `#products` — Product/Tool-related
- `#projects` — Project-related
- `#knowledge` — Conceptual/Learning
- `#decision` — Strategic Choices
- `#process` — Workflows & Methods

**Sekundär** (Optional):
- `#priority-high`, `#priority-medium`, `#priority-low`
- `#review-needed`, `#evidence-needed`
- `#work-in-progress`

---

## 📊 Provenance & Evidence

### Source Ledger Entry Template
```json
{
  "source_id": "s-000001",
  "title": "Source Title",
  "sha256": "abc123def456...",
  "locator": "wiki/sources/Source Name.md",
  "authority": "official|primary|secondary|community|synthetic|unknown",
  "independence_key": "source-category",
  "retrieved": "2026-08-01T00:00:00Z",
  "reviewed": "2026-08-01T00:00:00Z",
  "refresh_due": "2026-09-01",
  "review_state": "unreviewed|active|superseded|rejected",
  "linked_pages": ["wiki/entities/Entity.md", "wiki/concepts/Concept.md"]
}
```

### Claim Ledger Entry Template
```json
{
  "claim_id": "c-000001",
  "claim": "Falsifiable statement",
  "page": "wiki/entities/Entity.md",
  "supporting_sources": ["s-000001", "s-000002"],
  "contradicting_sources": ["s-000003"],
  "confidence": "high|medium|low",
  "risk": "high|medium|low",
  "review_state": "unreviewed|active|superseded|rejected",
  "assessment": "accepted|provisional|contested|unsupported|deprecated"
}
```

**Akzeptanz-Kriterien**:
- `accepted` Claims benötigen aktive, frische, nicht-synthetische Support
- Hohe Risiken: mind. 2 unabhängige Sources erforderlich
- Widersprüche bewahren, nicht schweigend einen "Gewinner" wählen

---

## 🔑 Entity vs Projekt — Smart Link Architektur

**KRITISCHE REGEL für alle Projekt-Pairs:**

Wenn es einen Projekt-Namen mit **BEIDEN** Entity + Projekt-Dateien gibt (z.B. "Fix-und-Flip", "E-Commerce", "IBA"), **MUSS** folgende Struktur verwendet werden:

### Entity = Referenz-Seite (Kurzform)
```markdown
# Projekt-Name

## 📌 Projekt-Identität
- Name, Typ, Status, Owner, Deadline

## 👥 Beteiligte (Tabelle, kompakt)

## 💰 Kapital/Budget (Kurzform nur)

## 🎯 Projekt-Ziel (1-3 Sätze)

## 📊 KPIs (1-2 Tabellen max)

## 🔗 Operative Details & Dokumentation

→ Siehe [[wiki/projects/Projekt-Name.md|Projekt]] für:
- Vollständigen Workflow/Phasen
- Detaillierte TODOs & Checklisten
- Timelines & Roadmaps
- Risiken & Mitigationen
```

**Zweck:** Entity beantwortet "WAS ist es?" — Schneller Lookup

### Projekt = Master-Seite (Vollständig)
```markdown
# Projekt-Name — Operativer Plan

## Alle Details hier:
- Phasen, Timelines, Workflows
- TODOs, Checklisten
- Kapitalmodelle (vollständig)
- Risiken, Mitigationen
- KPIs, Metriken
- Interview-Referenzen
```

**Zweck:** Projekt beantwortet "WIE wird es gemacht?" — Operative Quelle der Wahrheit

### Single Source of Truth
- ✅ **PROJEKT** ist die Master-Datei (Wahrheit)
- ✅ **ENTITY** verweist auf Projekt (Link, nicht Duplikat)
- ❌ Keine Duplikat-Inhalte (Kapitalmodell, Timeline, etc. nur im Projekt)
- ❌ Keine Redundanz

### Sprach-Konsistenz (Global)
- ✅ Alle Überschriften: **Deutsch**
- ✅ Dateinamen: Deutsch oder Englisch (konsistent pro Projekt)
- ✅ Englische Fachbegriffe: In Klammern erlaubt
- ❌ Englische Sektions-Titel
- ❌ Sprachmix in Überschriften

---

## ⚙️ Operative Workflows

### 1. Ingest (Neue Quellen & Entities aufnehmen)

```
1. Quelle erfassen:
   - In .raw/ speichern (create-only, SHA-256 addressiert)
   - .raw/.manifest.json updaten

2. Source-Summary erstellen:
   - wiki/sources/[Name].md mit Frontmatter
   - Referenzen zu Entities & Concepts hinzufügen
   - Source Ledger Entry erstellen

3. Entities & Concepts ingestieren:
   - wiki/entities/ oder wiki/concepts/
   - Links zu Sources und verwandten Pages

4. Provenance updaten:
   - wiki/meta/ledgers/source-ledger.json
   - wiki/meta/ledgers/claim-ledger.json

5. Index updaten:
   - wiki/index.md — neue Pages verlinken

6. Log updaten:
   - wiki/log.md — Operation hinzufügen (neueste zuerst)

7. Hot Context updaten (optional):
   - wiki/hot.md — aktuelle Threads/Fragen hinzufügen
```

**Transaktions-Bundle**: Alle Änderungen in einer Transaktion.

### 2. Query (Read-Only Knowledge Retrieval)

```
1. Relevante Evidence sammeln
2. Claims qualifizieren (accepted/provisional/contested/unsupported/stale)
3. Vault-Pages und Source-Records zitieren
4. Lücken angeben
```

**Keine Mutation**: Query ist read-only.

### 3. Save (Benutzer-genehmigte Inhalte speichern)

```
1. Benutzer wählt Inhalte explizit aus (nicht ganze Konversation)
2. Session-Page erstellen oder existierende Page updaten
3. Provenance wo nötig hinzufügen
4. Index updaten
5. Log updaten
6. Hot Cache updaten
```

### 4. Autoresearch (Web-basierte Recherche)

```
1. Explizite Frage + Source-Policy + Egress-Consent definieren
2. Web-Recherche durchführen
3. Results als Research Dossier speichern (separate Page)
4. Merge zu kanonischen Pages = separate reviewed Operation
```

### 5. Lint (Konsistenz-Check)

```
Deterministic read-only Report:
- Dead/ambiguous links
- Duplicate basenames
- Orphans (unreferenced pages)
- Missing frontmatter
- Empty sections
- Stale index entries
- Ledger contract violations
```

**Reparaturen sind separate Operation.**

---

## ✅ Checklisten

### Neue Page erstellen
- [ ] Richtigen `type` wählen
- [ ] Alle erforderlichen Frontmatter-Felder
- [ ] `created` und `updated` = heutig
- [ ] Aussagekräftige `tags`
- [ ] Auf die neue Page von `wiki/index.md` linken
- [ ] Operation in `wiki/log.md` hinzufügen

### Neues Projekt (Entity + Projekt Pair) erstellen
- [ ] **Entity-Datei:** Kurzform (Identität, Beteiligte, Status, KPIs)
- [ ] **Projekt-Datei:** Master (alle operativen Details, TODOs, Workflows)
- [ ] **Smart Link:** Entity → "Siehe Projekt für Details"
- [ ] **Sprache:** Alle Überschriften Deutsch (kein Mix)
- [ ] **Keine Duplikation:** Kapitalmodelle/Timelines nur im Projekt
- [ ] Beide in `wiki/index.md` verlinken (Entity + Projekt getrennt)
- [ ] Operation in `wiki/log.md` als "Entity/Projekt Pair erstellt"

### Page aktualisieren
- [ ] `updated` Datum ändern
- [ ] Bei Statusänderung: `status` updaten
- [ ] Neue Backlinks zu verwandten Pages hinzufügen
- [ ] Ledger updaten (falls Evidence geändert)
- [ ] `wiki/log.md` updaten

### Lint durchführen
- [ ] Nach bedeutsamen Operation Batches
- [ ] `lint` Report lesen
- [ ] Reparaturen in separate Operation bundeln
- [ ] Approval-Prozess durchführen

---

## 🚫 Anti-Patterns

- ❌ Langen Prosa ohne Headers/Struktur
- ❌ Dead Links (regelmäßig lint durchführen)
- ❌ Secrets oder Credentials in Pages
- ❌ Unqualifizierte Claims ohne Source-Links
- ❌ Riesige Pages (> 2000 Zeilen) ohne Breakout
- ❌ Timestamp-abhängige Statements (ohne "as of [date]")
- ❌ Duplikate von Information ohne expliziten Grund

---

## 🔧 Wartung

### Regelmäßig (Wöchentlich)
- [ ] `wiki/hot.md` aktualisieren
- [ ] Neue Entities/Concepts nach Bedarf ingestieren
- [ ] Inbox (`inbox/`) durchgehen

### Regelmäßig (Monatlich)
- [ ] `lint` durchführen
- [ ] Stale Pages reviewen (zuletzt geändert > 3 Monate)
- [ ] Orphan Pages identifizieren
- [ ] Source Ledger `refresh_due` Einträge überprüfen

### Unregelmäßig (Nach Bedarf)
- [ ] Transaction Recover (nach unterbrochene Apply)
- [ ] Checkpoint (Backup, Git History)
- [ ] Configuration updaten (`.claude-obsidian.json`)

---

## 📌 Wichtige Ressourcen

- [[wiki/index.md|Navigation Index]]
- [[wiki/overview.md|JARVEN Overview]]
- [[wiki/log.md|Operation Log]]
- [[wiki/hot.md|Hot Context]]
- [[.claude-obsidian.json|MCP Configuration]]

---

## 🔐 META-EBENE GOVERNANCE RULES (Mark OS Phase 1/2/3)

**Zweck:** Governance Conventions für decision-log, automations-registry, mark-os-governance

### Rule 1: Decision Log Entry (Phase 1)

Alle strategischen Entscheidungen (Holding-Level & höher) MÜSSEN dokumentiert sein:

```
DEC-YYYY-XXX: [Entscheidung]
├─ Datum: YYYY-MM-DD
├─ Entscheidungsträger: Mark Markner
├─ Status: 🔴 PENDING | ✅ ENTSCHIEDEN
├─ Rationale: [Why this decision? What were the options?]
├─ Entscheidung: JA | NEIN | CONDITIONAL
├─ Ergebnis: [What tasks were created/changed?]
├─ Impact: [Master-Action-Items changes]
└─ Review Notes (Phase 2): [Filled after Decision Review]
```

**Linked zu:**
- [[wiki/meta/decision-log.md|decision-log.md]] — Central Registry
- [[wiki/meta/decisions/DEC-YYYY-XXX.md|Detailed File]] — Full Details
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Task Impact

---

### Rule 2: Automations Registry Entry (Phase 2/3)

Alle Automationen MÜSSEN spezifiziert sein BEVOR Entwicklung startet:

```
AUTO-XXX: [Automation Name]
├─ Phase: 🟡 Phase 2 | Phase 3
├─ Status: 🔴 GEPLANT | 🟡 IN PROGRESS | 🟢 LIVE
├─ Owner: Claude (Dev) + Mark (Approval)
├─ Trigger: [When does automation run?]
├─ Input Schema: {JSON definition}
├─ Output Schema: {JSON definition}
├─ Dependencies: [What must be in place first?]
├─ Timeline: Q4 2026 (Start Oct 1, Deploy Oct 15)
├─ Test Plan: [Define how to test]
├─ Rollout Plan: [Define how to deploy]
└─ Monitoring: [Define how to monitor 2 weeks post-deployment]
```

**Linked zu:**
- [[wiki/meta/automations-registry.md|automations-registry.md]] — Central Registry
- [[wiki/meta/automations/AUTO-XXX.md|Detailed File]] — Full Specs
- [[wiki/meta/mark-os-governance.md|mark-os-governance.md]] — Phase 3 Workflow

---

### Rule 3: Mark is ALWAYS Decision-Maker

**Kritisch:** Alle strategischen Entscheidungen kommen von Mark, nicht Claude

- ❌ Claude entscheidet, Mark ratifiziert
- ✅ Claude empfiehlt, Mark entscheidet

**Process:**
1. Claude: Analyse + Empfehlung
2. Mark: Entscheidung (JA/NEIN/CONDITIONAL)
3. Claude: Dokumentation in decision-log
4. Claude: Tasks updaten basierend auf Entscheidung

---

### Rule 4: Documentation BEFORE Execution

Entscheidungen & Automationen MÜSSEN dokumentiert sein VOR Umsetzung startet

- ❌ Task starten → später dokumentieren
- ✅ Entscheidung dokumentieren → Task starten

**Sequence:**
```
Entscheidung: documented → DEC-XXX → task created
Automation: spezifiziert → AUTO-XXX → entwicklung startet
```

---

### Rule 5: Governance Layers (Meta-Struktur)

Alle Meta-Dateien folgen dieser Hierarchie:

**Layer 1: Governance** (decision-log, mark-os-governance)
- Wer entscheidet? Wie?
- Workflows für Phase 1/2/3

**Layer 2: Planning** (Master-Action-Items)
- Welche TODOs?
- Deadlines & Owner

**Layer 3: Automation** (automations-registry)
- Welche Automationen?
- Status & Timeline

**Layer 4: Monitoring** (dashboard-definitions, log, hot)
- Wie ist der Status?
- Welche Risiken?

---

### Rule 6: Phase-Specific Workflows

**Phase 1 (Aug-Sept 2026):** Entscheidungs-Freigabe
- Decisions getroffen → documented in decision-log
- Monatliche Decision Review (ab Sept)

**Phase 2 (Sept+ 2026):** Learning & Automation Prep
- Entscheidungen reviewed (war das richtig?)
- Automationen spezifiziert & teilweise developed
- Dashboards getestet

**Phase 3 (Jan+ 2027):** Automations Scale
- Automationen deployed (AUTO-001, 002, 003, 004)
- Dashboards live
- Minimal manuelle Arbeit

---

### Rule 7: Zentrale vs Dezentralisierte Struktur

**Zentral** (Überblick):
- decision-log.md — alle Entscheidungen in einer Datei
- automations-registry.md — alle Automationen in einer Datei
- dashboard-definitions.md — alle Metriken definiert

**Dezentralisiert** (Details):
- wiki/meta/decisions/DEC-XXX.md — Detaillierte Entscheidung
- wiki/meta/automations/AUTO-XXX.md — Detaillierte Automation
- wiki/meta/governance/PHASE-X.md — Detailed Workflow

**Linking:** Zentral → verweist auf dezentralisiert für Details

---

**Updated:** 2026-08-17  
**Governance v1 — Mark OS Phase 1/2/3 Workflows**

---

## 🌐 SPRACHREGEL — 100% DEUTSCH (Englische Fachbegriffe erlaubt)

### Regel:
- ✅ **ALLE Überschriften:** Deutsch
- ✅ **ALLE Texte:** Deutsch
- ✅ **Englische Fachbegriffe:** Erlaubt & erwünscht
- ❌ **Englische Sektions-Header:** Nicht erlaubt

### Erlaubte englische Fachbegriffe:
Dataview, Query, Schema, API, JSON, Holding, GmbH, Entity, Projekt, Automation, Dashboard, Cockpit, FBA, Etsy, Shopify, Workflow, Trigger, Phase, Rollout, Deployment, SaaS, MRR, CAC

### Konvertierungs-Beispiele:
- ❌ `## Purpose` → ✅ `## Zweck`
- ❌ `## Timeline` → ✅ `## Zeitrahmen`
- ❌ `## Process` → ✅ `## Prozess`
- ❌ `## Task` → ✅ `## Aufgabe`
- ✅ `Dataview Query` → ✅ `Dataview-Query` (ok, keine Übersetzung nötig)

### Gültig für:
- Alle Meta-Dateien (decisions, automations, governance, dashboard, etc.)
- Alle operativen Dateien (Master-Action-Items, hot, log)
- Alle Tier-1/2/3 Dateien

---

## JARVIN-REGELN — Wie Meta-Ebene gefüllt wird

**Siehe:** [[wiki/meta/JARVIN-FILL-RULES.md|JARVIN-Füllanleitung]]

**Wichtigste Regeln:**
1. **Sprache:** 100% Deutsch (englische Fachbegriffe ok)
2. **Format:** Folge den Templates in JARVIN-FILL-RULES.md
3. **Links:** Alle Wikilinks müssen vollständig sein ([[path/to/file.md|Text]])
4. **Status-Icons:** Immer Icons verwenden (🔴🟡🟢✅)
5. **Datumsformat:** Immer YYYY-MM-DD
6. **Qualitätskontrolle:** 5-Punkt-Prüfung vor Speichern

---

*Zuletzt aktualisiert: 2026-08-17*  
*Conventions v1.2 — Claude-Obsidian Schema + Meta-Governance + Sprachregel*
