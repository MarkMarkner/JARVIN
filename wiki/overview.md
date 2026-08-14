---
type: overview
title: JARVEN Overview
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - wiki
  - overview
  - architecture
address: ov-001
---

# JARVEN Overview

**JARVEN** ist die zentrale Wissensbasis (Gedächtnis und Wissensmaschine) für **Mark OS** — ein persönliches und berufliches Assistenzsystem.

---

## 🎯 Vision

**JARVEN** strukturiert erfasst und verknüpft:
- **Projekte** — Aktivitäten mit definierten Zielen
- **Unternehmen** — Organisationen, Firmen, Stakeholder
- **Personen** — Kontakte, Roles, Beziehungen
- **Aufgaben & Entscheidungen** — Handlungseinheiten und strategische Weggabelungen
- **Prozesse** — Wiederkehrende Workflows und Methoden
- **Dokumente** — Quellen, Evidenz, Rohmaterialien
- **Fachwissen** — Konzepte, Frameworks, gelernte Lektionen

**Mark OS** wird später als Cockpit/Dashboard auf JARVEN zugreifen, Informationen zusammenfassen, Prioritäten anzeigen und Workflows steuern.

---

## 📊 Architektur

### Ebenen

```
┌─────────────────────────────────────────────────────┐
│            Mark OS (Future Cockpit)                 │
│     Dashboard, Prioritäten, Workflows, APIs         │
└────────────────────┬────────────────────────────────┘
                     │
                     ↓
┌─────────────────────────────────────────────────────┐
│          JARVEN (Knowledge Base)                    │
│   Entities, Concepts, Questions, Evidence          │
├─────────────────────────────────────────────────────┤
│  wiki/                                              │
│  ├─ index.md (Navigation & Catalog)                │
│  ├─ log.md (Operation History)                     │
│  ├─ hot.md (Current Context)                       │
│  ├─ overview.md (This Page)                        │
│  ├─ sources/ (Provenance & Evidence)               │
│  ├─ entities/ (People, Orgs, Products, Projects)   │
│  ├─ concepts/ (Ideas, Frameworks, Knowledge)       │
│  ├─ questions/ (Q&A with Evidence Status)          │
│  ├─ canvases/ (Diagrams & Visual Structures)       │
│  └─ meta/ledgers/ (Source & Claim Ledgers)         │
├─────────────────────────────────────────────────────┤
│  inbox/ (Input Buffer)                              │
│  .raw/ (Immutable Source Bytes)                    │
│  .vault-meta/ (Runtime State, Locks, Indexes)      │
└─────────────────────────────────────────────────────┘
```

### Information Flow

1. **Capture** — Quellen in `inbox/` oder direkt in `.raw/`
2. **Ingest** — Parse, Summarize, Link, Ledger
3. **Synthesize** — Entity/Concept/Question Pages erstellen
4. **Query** — Read-only Zugriff für Mark OS Dashboard
5. **Iterate** — Lint, Verify, Update

---

## 🗂️ Domänen & Ihre Seiten

### Entities (`wiki/entities/`)
Stabile Identitäten mit Metadaten und Beziehungen.

**Types:**
- People (Personen mit Rollen, Kontakt, Geschichte)
- Organizations (Firmen, Teams, Stakeholder)
- Products (Softwareprodukte, Dienstleistungen, Tools)
- Projects (Aktivitäten mit Zielen, Timelines, Outcomes)

**Beispiel-Struktur:**
```
[[wiki/entities/Mark Markner.md]]
[[wiki/entities/Anthropic.md]]
[[wiki/entities/Mark OS Project.md]]
```

### Concepts (`wiki/concepts/`)
Ideen, Methoden, Frameworks, gelernte Lektionen.

**Types:**
- Frameworks (PARA, OODA, etc.)
- Technische Konzepte (APIs, Architectures)
- Business Patterns (Growth, Sustainability)
- Knowledge Domains (AI, Finance, Strategy)

**Beispiel:**
```
[[wiki/concepts/PARA-Method.md]]
[[wiki/concepts/Operational Excellence.md]]
```

### Questions (`wiki/questions/`)
Scoped Fragen mit Evidence-Status und Antworten.

**Structure:**
- Question Statement
- Evidence Status (accepted, provisional, contested, unsupported)
- Supporting Sources
- Contradicting Sources
- Current Best Answer

**Beispiel:**
```
[[wiki/questions/How should Mark OS prioritize tasks.md]]
```

### Sources (`wiki/sources/`)
Traceable Zusammenfassungen einzelner Quellen.

**Metadata:**
- Stable ID & SHA-256
- Authority (official, primary, secondary, community, synthetic)
- Review State (unreviewed, active, superseded, rejected)
- Linked Pages
- Refresh Due Date

**Beispiel:**
```
[[wiki/sources/Claude-Obsidian Spec.md]]
```

---

## 🔗 Verknüpfungsprinzipien

- **Navigate**: Links helfen beim Verstehen von Beziehungen
- **No Symmetric Backlinks**: Nur sinnvolle, nicht-redundante Verbindungen
- **Paths for Disambiguation**: Bei Namensdubletten: `folder/page.md`
- **Block References**: `[[Target#Heading]]` oder `[[Target#^block]]` für Präzision

---

## 📊 Provenance & Evidence

### Source Ledger (`wiki/meta/ledgers/source-ledger.json`)
```json
{
  "source_id": "s-000001",
  "title": "Claude-Obsidian Specification",
  "sha256": "abc123...",
  "locator": "wiki/sources/Claude-Obsidian Spec.md",
  "authority": "primary",
  "review_state": "active",
  "linked_pages": ["wiki/concepts/PARA-Method.md"],
  "refresh_due": "2026-09-01"
}
```

### Claim Ledger (`wiki/meta/ledgers/claim-ledger.json`)
```json
{
  "claim_id": "c-000001",
  "claim": "JARVEN should follow claude-obsidian.v1 schema",
  "page": "wiki/overview.md",
  "supporting_sources": ["s-000001"],
  "confidence": "high",
  "status": "accepted"
}
```

---

## ⚙️ Operative Workflows

### 1. **Ingest** — Quellen und Entities aufnehmen
- Source erfassen (`.raw/`)
- Summary schreiben (`wiki/sources/`)
- Entities/Concepts ingestieren
- Provenance updaten
- Index updaten
- Log updaten

### 2. **Query** — Knowledge abrufen (Read-Only)
- Relevante Evidence sammeln
- Claims qualifizieren (accepted/provisional/contested)
- Quellen zitieren
- Lücken angeben

### 3. **Save** — Benutzer-genehmigte Inhalte speichern
- Nur explizit ausgewählter Content
- Separate reviewed operation

### 4. **Autoresearch** — Web-basierte Recherche
- Explizite Frage, Source-Policy, Egress-Consent
- Results als Dossier speichern
- Merge zu kanonischen Pages = separate Operation

### 5. **Lint** — Konsistenz-Check
- Dead/ambiguous links
- Duplicate basenames
- Orphans
- Missing frontmatter
- Stale index entries
- Ledger violations

---

## 🚀 Geplante Integrationen

### Mark OS Dashboard (Künftig)
- **Local REST API** aktivieren (Port 27124)
- **Query Interface** für Dashboard-Widgets
- **Prioritäts-Engine** — Top Entities/Projects/Questions
- **Workflow Automation** — Task Management via JARVEN

---

## 📝 Conventions

### Frontmatter (Alle Pages)
```yaml
---
type: entity|concept|question|source|session|meta|overview|fold
title: Human-Readable Title
status: seed|active|developing|evergreen|answered|provisional|contested|deprecated|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - domain
  - topic
aliases: []
address: entity-000001
---
```

### File Naming
- Basename unique → `[[Page]]` OK
- Duplicates → Use path: `[[folder/Page]]`
- Spaces → Use in filename, wiki-links auto-convert

### Link Style
- `[[Target]]` — Basic link
- `[[Target|Alias]]` — Custom display text
- `[[Target#Heading]]` — Link to heading
- `[[Target#^block]]` — Link to block reference
- `![[Image.png]]` — Embed image

---

## ✅ Status Quo (2026-08-01)

| Komponente | Status | Nächste Schritte |
|-----------|--------|-----------------|
| **Vault Structure** | ✅ Initialisiert | Entities/Concepts aufnehmen |
| **Core Pages** | ✅ Created | Content füllen |
| **MCP Config** | ✅ Active | `.claude-obsidian.json` live |
| **Ledgers** | ⏳ Vorbereitet | Erste Sources ingestieren |
| **Local REST API** | ❌ Inactive | Obsidian Plugin aktivieren |
| **Mark OS Cockpit** | 🔮 Design Phase | REST API abhängig |

---

## 🔮 Zukunftsvision

**JARVEN 2027**: 
- 500+ Entities (Personen, Orgs, Projekte)
- 1000+ Concepts und Q&As
- 100+ Source-Ledger Einträge
- Active, Mark OS-integrated Dashboard
- Provenance-verified Claims
- Lint-clean, consistently-linked Knowledge Graph

---

## 📚 Siehe auch

- [[wiki/index.md|Navigation Index]]
- [[wiki/log.md|Operation Log]]
- [[wiki/hot.md|Hot Context]]
- [[.claude-obsidian.json|MCP Configuration]]

---

*Zuletzt aktualisiert: 2026-08-01*  
*JARVEN: Gedächtnis und Wissensmaschine für Mark OS*
