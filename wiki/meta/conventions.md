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

*Zuletzt aktualisiert: 2026-08-01*  
*Conventions v1 — Claude-Obsidian Schema*
