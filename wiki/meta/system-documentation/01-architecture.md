---
type: meta
title: Architektur des Claude-Obsidian Systems
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - system
  - architecture
  - schema
  - documentation
address: doc-arch-001
---

# Architektur des Claude-Obsidian Systems

Die vollständige Struktur, auf der JARVEN basiert.

---

## 🏗️ 1. Vault-Struktur (Oberste Ebene)

```
/Users/ingmarkner/JARVIN/
├── .claude-obsidian.json       ← MCP-Serverkonfiguration
├── .gitignore                   ← Git-Ignore Regeln
├── README.md                    ← Vault-Übersicht
├── WIKI.md                      ← Original Claude-Obsidian Spec
│
├── inbox/                       ← Sichtbare Source-Aufnahme
│   └── (Eingepflückte Quellen vor Verarbeitung)
│
├── .raw/                        ← Unveränderliche Quellbytes
│   ├── .manifest.json           ← Source-Metadata & Addressierung
│   └── (Binäre oder Text-Rohdaten)
│
├── wiki/                        ← HAUPTWISSENSBASIS (user-owned)
│   ├── index.md                 ← Navigations-Katalog
│   ├── log.md                   ← Operation-Historie
│   ├── hot.md                   ← Aktuelle Kontexte (bounded)
│   ├── overview.md              ← High-Level Synthese
│   │
│   ├── sources/                 ← Source-Summaries
│   ├── entities/                ← People, Organizations, Products, Projects
│   ├── concepts/                ← Ideas, Frameworks, Knowledge
│   ├── questions/               ← Q&A mit Evidence-Status
│   ├── canvases/                ← Diagramme & visuelle Strukturen
│   │
│   └── meta/                    ← System-Maintenance
│       ├── conventions.md       ← Vault-spezifische Guidelines
│       ├── system-documentation/  ← DIESE Dokumentation
│       └── ledgers/
│           ├── source-ledger.json     ← Evidence Registry
│           └── claim-ledger.json      ← Claims Registry
│
└── .vault-meta/                 ← IGNORIERT: Runtime State
    └── (Locks, Journals, Indexes, Session-Data)
```

### Designprinzipien:

| Ordner | Prinzip |
|--------|---------|
| `wiki/` | **User-owned Knowledge** — Du hast vollständige Kontrolle |
| `inbox/` | **Temporal Buffer** — Quellen warten hier auf Verarbeitung |
| `.raw/` | **Immutable Source** — Quellen dürfen NICHT geändert werden |
| `.vault-meta/` | **Runtime Ephemeral** — Wird ignoriert, nicht persistent |
| `wiki/meta/` | **System Configuration** — Regeln, Ledgers, Dokumentation |

---

## 📄 2. Seitentypen (Das Herz der Architektur)

Jede Seite in JARVEN ist vom Typ `entity`, `concept`, `question`, `source`, `session`, `overview`, `meta` oder `fold`.

### 2.1 `entity` — Stabile Identität

**Zweck**: Abbildung von Objekten der realen Welt mit stabiler Identität.

**Subtypes**:
- **Person**: Mensch mit Rollen, Fähigkeiten, Kontakten
- **Organization**: Unternehmen, Team, Institution
- **Product**: Software, Hardware, Service
- **Project**: Initiative mit Zielen, Timeline, Outcomes

**Struktur**:
```yaml
---
type: entity
entity_type: person|organization|product|project
title: [Name]
status: seed|active|developing|evergreen|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [domain-tags]
address: entity-XXXXX
---
```

**Eigenschaften**:
- Stabile, unveränderliche Identität
- Eindeutige Adresse (für Content-Referenz)
- Beziehungen zu anderen Entitäten
- Quellenverweise (wer sagt das?)

**Beispiele**:
- `wiki/entities/Mark Markner.md` (PERSON)
- `wiki/entities/Anthropic.md` (ORGANIZATION)
- `wiki/entities/Claude.md` (PRODUCT)
- `wiki/entities/JARVEN.md` (PROJECT)

---

### 2.2 `concept` — Idee, Framework, Wissen

**Zweck**: Abstrakte Ideen, Methoden, Theorien, Fachbegriffe.

**Kategorien**:
- **Framework**: PARA, Zettelkasten, GTD, OKR
- **Theory**: Systemdenken, Emergenz, Ontologie
- **Method**: Design Thinking, Lean, Agile
- **Domain**: AI, Finance, Biology, etc.
- **Principle**: Leadership, Ethics, Sustainability

**Struktur**:
```yaml
---
type: concept
title: [Concept Name]
status: seed|active|developing|evergreen|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [domain-tags]
address: concept-XXXXX
---
```

**Eigenschaften**:
- Definiert durch Beschreibung, nicht durch externe Identität
- Relationen zu anderen Concepts (Hierarchie, Verwandtschaft)
- Anwendungsbeispiele (wo wird es genutzt)
- Quellenverweise (wer hat es definiert)

**Beispiele**:
- `wiki/concepts/PARA-Method.md`
- `wiki/concepts/Systems Thinking.md`
- `wiki/concepts/Constitutional AI.md`

---

### 2.3 `question` — Q&A mit Evidence-Status

**Zweck**: Scoped Fragen mit sichtbarem Beweisstand.

**Struktur**:
```yaml
---
type: question
title: [Question Statement?]
status: seed|developing|provisional|answered|contested|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [domain-tags]
address: question-XXXXX
---
```

**Obligatorische Felder**:
- **Question**: Klare, scoped Formulierung
- **Evidence Status**: accepted | provisional | contested | unsupported | deprecated
- **Supporting Sources**: Welche Quellen unterstützen diese Antwort?
- **Contradicting Sources**: Gibt es Widerspruch?
- **Confidence Level**: high | medium | low
- **Best Current Answer**: Oder "Unzureichend Belege"

**Beispiele**:
- `wiki/questions/How should Mark OS prioritize tasks.md`
- `wiki/questions/What is JARVEN's long-term scalability.md`

---

### 2.4 `source` — Traceable Zusammenfassung

**Zweck**: Externe Quelle als nachverfolgbare, zitierfähige Referenz.

**Struktur**:
```yaml
---
type: source
title: [Source Title]
status: seed|active|developing|evergreen|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [source-type]
address: source-XXXXX
---
```

**Obligatorische Metadaten**:
- **Title**: Exakter Titel der Quelle
- **Author**: Wer hat es geschrieben?
- **Date**: Wann veröffentlicht?
- **Type**: Paper | Blog | Book | Video | API Docs | etc.
- **Locator**: URL oder `.raw/pfad`
- **SHA-256**: Hash für Verifizierung
- **Authority**: official | primary | secondary | community | synthetic | unknown
- **Review State**: unreviewed | active | superseded | rejected
- **Refresh Due**: Wann sollte es überprüft werden?

**Beispiele**:
- `wiki/sources/Claude-Obsidian Specification.md`
- `wiki/sources/PARA Method - Tiago Forte.md`

---

### 2.5 `session` — Genehmigte Konversations-Inhalte

**Zweck**: Ausgewählte Inhalte aus Gesprächen mit Claude speichern.

**Struktur**:
```yaml
---
type: session
title: [Session Summary]
status: seed|active|developing|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [topic-tags]
address: session-XXXXX
---
```

**Eigenschaften**:
- Nur explizit ausgewählte Inhalte (keine ganzen Konversationen)
- Provenance Links zu Sources
- Separate Transaktion von Ingest/Query
- Zeitlich begrenzt (Session-Datum im Frontmatter)

---

### 2.6 `overview` — High-Level Synthese

**Zweck**: Karte einer Domäne oder des gesamten Vaults.

**Struktur**:
```yaml
---
type: overview
title: [Domain or System Overview]
status: active|developing|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [domain-tags]
address: overview-XXXXX
---
```

**Eigenschaften**:
- High-Level ohne Details
- Verweist auf spezialisierte Seiten
- Stellt Relationen zwischen Konzepten dar
- Weniger häufig aktualisiert als Hot Context

**Beispiele**:
- `wiki/overview.md` — JARVEN System Overview
- `wiki/entities/Anthropic Overview.md` — Unternehmens-Übersicht

---

### 2.7 `meta` — Index, Log, Cache, Convention

**Zweck**: System-Metadaten und Wartung.

**Subtypes**:
- **Index**: Katalog & Navigation (z.B. `wiki/index.md`)
- **Log**: Operation-Historie (z.B. `wiki/log.md`)
- **Cache**: Bounded aktuelle Kontexte (z.B. `wiki/hot.md`)
- **Convention**: Regeln & Guidelines (z.B. `wiki/meta/conventions.md`)
- **Documentation**: System erklären (z.B. diese Datei)

**Struktur**:
```yaml
---
type: meta
title: [Purpose]
status: active|developing|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [wiki, meta, purpose-tags]
address: meta-XXXXX
---
```

---

### 2.8 `fold` — Extractive Rollup

**Zweck**: Zusammenfassung von Log-Einträgen ohne Änderung der Originals.

**Struktur**:
```yaml
---
type: fold
title: [Period Summary, e.g., "August 2026 Summary"]
status: active|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [fold, period-tags]
address: fold-XXXXX
---
```

**Eigenschaften**:
- Extrahiert aus `wiki/log.md` (verändert Log nicht)
- Aggregiert mehrere Operationen
- Nützlich für Periode-Übersichten

---

## 🔗 3. Relationen zwischen Seitentypen

### Typische Verbindungen:

```
PERSON (entity)
├─ works_at ──→ ORGANIZATION (entity)
├─ leads ──────→ PROJECT (entity)
├─ understands → CONCEPT (entity)
├─ founded ────→ ORGANIZATION (entity)
└─ cited_by ──→ SOURCE (source)

ORGANIZATION (entity)
├─ employs ────→ PERSON (entity)
├─ develops ───→ PROJECT (entity)
├─ follows ────→ CONCEPT (entity)
├─ based_in ───→ LOCATION (entity)
└─ referenced ─→ SOURCE (source)

PROJECT (entity)
├─ led_by ─────→ PERSON (entity)
├─ developed_by → ORGANIZATION (entity)
├─ applies ────→ CONCEPT (entity)
├─ answered_by → QUESTION (question)
└─ supported ──→ SOURCE (source)

CONCEPT (concept)
├─ used_by ────→ PERSON/ORG/PROJECT
├─ related_to ─→ CONCEPT (concept)
├─ contradicts → CONCEPT (concept)
├─ defined_in ─→ SOURCE (source)
└─ answers ────→ QUESTION (question)

QUESTION (question)
├─ about ──────→ ENTITY (any type)
├─ relates_to ─→ CONCEPT (concept)
├─ supported ──→ SOURCE (source)
└─ answered_by → SESSION (session)

SOURCE (source)
├─ cites ──────→ ENTITY/CONCEPT/QUESTION
├─ authority ──→ Authority Level
├─ reviewed ───→ Review State
└─ linked_to ──→ ENTITY/CONCEPT/QUESTION
```

### Grundprinzip:

**Relationen sind nicht symmetrisch** (außer wo semantisch sinnvoll).

- A → B (sinnvoll: "JARVEN nutzt PARA-Method")
- B → A (nicht automatisch: "PARA-Method wird genutzt von JARVEN" ist nur relevant, wenn Navigation hilft)

---

## 📊 4. Frontmatter-Standard (Unverletzbar)

Jede Seite MUSS diese Felder haben:

```yaml
---
type: entity|concept|question|source|session|overview|meta|fold
title: [Human-Readable Title]
status: seed|active|developing|evergreen|answered|provisional|contested|deprecated|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - [domain-tag]
  - [topic-tag]
---
```

### Optionale Felder:

```yaml
aliases:
  - Alternative Name
  - Another Name
address: [entity|concept|question|source|session|overview|meta|fold]-XXXXX
```

### Status-Bedeutungen:

| Status | Bedeutung | Nutzung |
|--------|-----------|---------|
| `seed` | Neu, minimal Content | Erste Erstellung |
| `active` | In Gebrauch, regelmäßig aktualisiert | Standard |
| `developing` | Aktive Arbeit, noch nicht stabil | Work in Progress |
| `evergreen` | Selten geändert, dauerhaft relevant | Stabile Inhalte |
| `answered` | Question mit vollständiger Antwort | Questions nur |
| `provisional` | Tentativ, subject to change | Unsichere Inhalte |
| `contested` | Mehrere Viewpoints, ungelöst | Kontroverse |
| `deprecated` | Veraltet, Nachfolger verweisen | Archivierung |
| `archived` | Historisch, selten referenziert | Archiv |

---

## 🎯 5. Folder-Hierarchie & Verantwortlichkeiten

### `wiki/sources/`
**Verantwortung**: Externe Quellen managen
- Eine Datei = Eine Quelle
- Metadaten in Frontmatter
- SHA-256 für Verifizierung
- Authority & Review State tracked
- Linked zu relevanten Entities/Concepts

### `wiki/entities/`
**Verantwortung**: Stabile Identitäten katalogisieren
- Eine Datei = Ein Entity (Person, Org, Product, Project)
- Metadata über die Sache
- Beziehungen zu anderen Entities
- Links zu Source-Belegen
- Nie wirklich "gelöscht", nur `archived`

### `wiki/concepts/`
**Verantwortung**: Wissen strukturieren
- Eine Datei = Ein Concept
- Definition & Erklärung
- Verwandte Concepts (Hierarchie)
- Praktische Anwendungsbeispiele
- Quellenverweise
- Kann sich entwickeln (mehrere Versionen okay)

### `wiki/questions/`
**Verantwortung**: Offene Fragen tracked
- Eine Datei = Eine scoped Question
- Aktuelle beste Antwort
- Evidence Status sichtbar
- Unterstützende & widersprechende Quellen
- Confidence Level
- Wird "answered" wenn genug Belege da

### `wiki/canvases/`
**Verantwortung**: Visuelle Strukturen
- Obsidian Canvas-Dateien
- Diagramme & Mind Maps
- Relationen visualisiert
- Supplemental zu Text-Seiten

### `wiki/meta/`
**Verantwortung**: System-Metadaten
- `conventions.md`: Vault-spezifische Regeln
- `system-documentation/`: Architektur erklärt
- `ledgers/`: Evidence & Claims tracking

---

## ⚙️ 6. Ledger-System (Provenance)

### Source Ledger (`wiki/meta/ledgers/source-ledger.json`)

```json
{
  "source_id": "s-000001",
  "title": "Source Title",
  "sha256": "abc123...",
  "locator": "wiki/sources/Source.md",
  "authority": "official|primary|secondary|community|synthetic|unknown",
  "retrieved": "2026-08-01T00:00:00Z",
  "reviewed": "2026-08-01T00:00:00Z",
  "refresh_due": "2026-09-01",
  "review_state": "unreviewed|active|superseded|rejected",
  "linked_pages": ["wiki/entities/Entity.md", "wiki/concepts/Concept.md"]
}
```

**Zweck**: 
- Trennt Evidence-Identität von Prosa
- Erlaubt Tracking von Quellen über die Zeit
- Ermöglicht Refresh-Planung
- Supports Claim-Validierung

**Authority-Levels** (von sicher zu unsicher):
1. `official` — Offizielle Quelle vom Autor/Org
2. `primary` — Erste Original-Publikation
3. `secondary` — Interpretation/Analyse einer Primary
4. `community` — Community-bewertete Inhalte
5. `synthetic` — AI-generiert oder kombiniert
6. `unknown` — Unsicher oder Archiv

---

### Claim Ledger (`wiki/meta/ledgers/claim-ledger.json`)

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

**Zweck**:
- Tracked falsifizierbare Aussagen
- Zeigt Supporting & Contradicting Evidence
- Erlaubt Confidence-Bewertung
- Nicht: Alle Claims müssen getracked sein, nur relevante

**Assessment-Kriterien**:
- `accepted`: Aktive, frische, nicht-synthetische Support. High-Risk braucht 2 unabhängige Sources.
- `provisional`: Wahrscheinlich wahr, aber unsicher.
- `contested`: Multiple Viewpoints, ungelöst.
- `unsupported`: Keine guten Belege.
- `deprecated`: War akzeptiert, ist es nicht mehr.

---

## 🔄 7. Transaction Model (Wie Änderungen erfolgen)

Eine **logische Mutation** ist **eine Transaktion**:

```json
{
  "schema": "claude-obsidian.transaction.v1",
  "operation_id": "op-ingest-001",
  "operation_type": "ingest|query|save|autoresearch|lint",
  "expected_hashes": {
    "wiki/sources/Example.md": null
  },
  "writes": [
    {
      "path": "wiki/sources/Example.md",
      "mode": "create|update",
      "content": "...",
      "sha256": "HASH"
    }
  ],
  "address_requests": [
    {"path": "wiki/sources/Example.md", "prefix": "s"}
  ],
  "source_manifest_updates": {}
}
```

### Beispiel: Ingest-Operation

```
1. Source erfassen (.raw/)
2. Source Summary schreiben (wiki/sources/)
3. Entities/Concepts erstellen
4. Provenance updaten (Ledgers)
5. Index updaten (wiki/index.md)
6. Log updaten (wiki/log.md)
7. Hot Cache updaten (wiki/hot.md)
8. → ALLES IN EINER TRANSAKTION
```

**Regel**: Jede neue kanonische Page = Index muss Updated werden.

---

## 🛡️ 8. Source Invariants (Unverletzbar)

Regeln, die NIEMALS gebrochen werden:

```
1. Seiten unter .raw/ werden NIEMALS geändert
   (Sie sind immutable, Content-Addressed)

2. .raw/.manifest.json ist einzige mutable Metadata
   (Nur innerhalb gleicher Transaktion wie Operation)

3. Keine Credentials in URLs oder Konfiguration
   (Secrets gehören in Environment/Keychain)

4. Jede neue kanonische Page MUSS Index updaten
   (Sonst: Dead References möglich)

5. Backlinks werden NICHT automatisch erzeugt
   (Nur wenn Navigation genuinely hilft)

6. .gitignore schützt .vault-meta/
   (Runtime-State wird nicht getracked)

7. Frontmatter ist Quelle der Wahrheit
   (type, status, tags, address = normativ)
```

---

## 🚀 9. Organisches Wachstum (Wie JARVEN erweitert wird)

### Szenario: Neue Entity hinzufügen

```
1. Entscheide: Verdient diese Entity einen Platz?
   (Person, Org, Product, Project mit stabiler Identität)

2. Erstelle wiki/entities/[Name].md
   - Frontmatter: type=entity, entity_type=person|org|product|project
   - Inhalte: Beschreibung, Relationen, Quellen
   - Links zu verwandten Entities/Concepts

3. Link in bestehende Seiten hinzufügen
   (wenn sie diese Entity referenzieren)

4. wiki/index.md updaten
   (Neue Entity in passender Kategorie verlinken)

5. wiki/log.md updaten
   (Operation registrieren)

6. Source Ledger updaten
   (Falls neue Quellen hinzukamen)
```

### Szenario: Neues Concept definieren

```
1. Entscheide: Ist das eine eigenständige Idee?
   (Framework, Theorie, Methode, Domain, Prinzip)

2. Erstelle wiki/concepts/[Name].md
   - Definition & Erklärung
   - Verwandte Concepts
   - Praktische Anwendungen
   - Quellenverweise

3. Link in Entities/Concepts/Questions hinzufügen
   (wo relevant)

4. wiki/index.md updaten

5. wiki/log.md updaten
```

### Szenario: Frage beantworten

```
1. Erstelle oder update wiki/questions/[Question].md
   - Current best answer
   - Evidence Status
   - Supporting/contradicting sources
   - Confidence level

2. Update status: seed → developing → answered
   (wenn genug Belege)

3. Claim Ledger updaten
   (Falls komplexe Claims, diese tracken)

4. Backlinks updaten
   (Von Entities/Concepts zu dieser Question)
```

---

## 📌 10. Grundprinzipien (Philosophie)

### 10.1 "Source of Truth ist Struktur, nicht Inhalt"

```
Die Struktur (type, tags, address, Frontmatter) 
sagt dir was eine Seite ist.

Der Inhalt erklärt es, aber die Struktur DEFINIERT es.
```

### 10.2 "Immutable History"

```
Alte Inhalte werden nicht gelöscht.
Sie werden `deprecated` oder `archived`.
History bleibt nachverfolgbar.
```

### 10.3 "Explizit statt Implizit"

```
Beziehungen sollten explizit sein (Links).
Nicht: "Das sollte man wissen"
Sondern: [[This is explicitly linked]]
```

### 10.4 "Provenance ist kritisch"

```
Jede Aussage sollte eine Quelle haben.
Nicht: "Das ist wahr"
Sondern: "Das ist wahr (laut [[Source]])"
```

### 10.5 "Kein Wissen wird automatisch geändert"

```
Nur du darfst Entities/Concepts ändern.
Claude kann vorschlagen, aber nicht autonome ändern.
Kritische Entscheidungen brauchen deine Freigabe.
```

---

## 🎯 Zusammenfassung: Was die Architektur sichert

| Element | Sichert |
|---------|---------|
| **8 Seitentypen** | Klare Kategorisierung ohne Mehrdeutigkeit |
| **Frontmatter** | Maschinenlesbarkeit & Struktur |
| **Folders** | Organisierte Navigation |
| **Ledgers** | Provenance & Evidence Tracking |
| **Transaction Model** | Konsistenz bei Änderungen |
| **Source Invariants** | Keine Daten-Korruption |
| **Links** | Explizite Beziehungen |
| **Adressen** | Content-Referenzierbarkeit |

---

## 🔗 Nächste Schritte

→ Lese [[wiki/meta/system-documentation/02-knowledge-model.md|Wissensmodell]]  
um zu verstehen, **wie Wissen organisiert wird**.

---

*Architektur ist nicht Dogma — sie ist Struktur für Wachstum.*  
*Diese Architektur ermöglicht organisches Wachstum ohne Chaos.*
