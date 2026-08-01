# JARVEN — Personal & Professional Knowledge Base

**JARVEN** (Mark OS Gedächtnis-System) ist die zentrale Wissensbasis für **Mark OS**, ein persönliches und berufliches Assistenzsystem.

## 🚀 Schnelleinstieg

### Vault öffnen
```bash
obsidian://open?vault=JARVIN
```

Oder: `File → Open Vault → JARVIN` in Obsidian.

### Erste Schritte
1. **Navigation**: Öffne [[wiki/index.md|Wiki Index]]
2. **Übersicht**: Lese [[wiki/overview.md|JARVEN Overview]]
3. **Conventions**: Beachte [[wiki/meta/conventions.md|Guidelines]]

### Konfiguration
- **MCP Server**: Konfiguriert in `.claude-obsidian.json`
- **Local REST API**: Aktiviere in Obsidian (Settings → Community Plugins → Local REST API)
  - Port: `27124`
  - Nutze für Mark OS Cockpit-Integration

---

## 📂 Struktur

```
JARVEN/
├── .claude-obsidian.json        ← MCP-Konfiguration
├── .gitignore                    ← Git-Ignore Regeln
├── README.md                     ← Diese Datei
│
├── inbox/                        ← Sichtbare Source-Aufnahme
│   └── (Quellen bis zur Verarbeitung)
│
├── .raw/                         ← Unveränderliche Quellbytes
│   ├── .manifest.json            ← Source-Metadata
│   └── (Raw capture bytes)
│
├── wiki/                         ← Hauptwissensbasis (user-owned)
│   ├── index.md                  ← Navigation & Katalog
│   ├── log.md                    ← Operation-Historie
│   ├── hot.md                    ← Aktuelle Kontexte
│   ├── overview.md               ← High-Level Übersicht
│   ├── sources/                  ← Source-Summaries
│   ├── entities/                 ← People, Orgs, Products, Projects
│   ├── concepts/                 ← Ideas, Frameworks, Knowledge
│   ├── questions/                ← Q&As mit Evidence-Status
│   ├── canvases/                 ← Diagramme & visuelle Strukturen
│   └── meta/
│       ├── conventions.md        ← Vault-Conventions & Guidelines
│       └── ledgers/
│           ├── source-ledger.json    ← Evidence-Ledger
│           └── claim-ledger.json     ← Claims-Ledger
│
└── .vault-meta/                  ← Ignoriert: Locks, Journals, Indexes
    └── (Runtime-State)
```

---

## 🎯 Was ist JARVEN?

**Zweck**: Struktur erfasst und verknüpft zentral:
- 📋 **Projekte** — Aktivitäten mit Zielen
- 🏢 **Unternehmen** — Organisationen, Stakeholder
- 👥 **Personen** — Kontakte, Roles, Beziehungen
- ✅ **Aufgaben & Entscheidungen** — Handlungseinheiten
- 🔄 **Prozesse** — Wiederkehrende Workflows
- 📄 **Dokumente** — Quellen, Evidenz, Rohmaterial
- 💡 **Fachwissen** — Konzepte, Frameworks, gelernte Lektionen

**Ziel**: **Mark OS** Cockpit nutzt JARVEN als Backend für:
- Informations-Zusammenfassung
- Prioritäts-Anzeige
- Workflow-Steuerung
- Langfristige, nachvollzogene Wissensorganisation

---

## 🔗 Wissensdomänen

### `wiki/entities/` — Stabile Identitäten
```
[[wiki/entities/Mark Ärner.md]]
[[wiki/entities/Anthropic.md]]
[[wiki/entities/Mark OS Project.md]]
```

### `wiki/concepts/` — Ideen & Frameworks
```
[[wiki/concepts/PARA-Method.md]]
[[wiki/concepts/Systems Thinking.md]]
```

### `wiki/questions/` — Q&A mit Evidence
```
[[wiki/questions/How should I prioritize.md]]
```

### `wiki/sources/` — Traceable Summaries
```
[[wiki/sources/Claude-Obsidian Spec.md]]
```

---

## ⚙️ Zentrale Workflows

### 1. **Ingest** — Neue Quellen erfassen
```
.raw/ → wiki/sources/ → entities/concepts → Ledgers → Index → Log
```

### 2. **Query** — Wissen abrufen (Read-Only)
```
Relevante Evidence sammeln → Claims qualifizieren → Zitieren → Gaps angeben
```

### 3. **Save** — User-genehmigte Inhalte speichern
```
Content auswählen → Session Page → Provenance → Index → Log
```

### 4. **Lint** — Konsistenz-Check
```
Dead Links → Orphans → Missing Frontmatter → Repair Proposals
```

---

## 🔒 Sicherheit & Wartung

✅ **Was ist sicher**:
- Vault Root: `/Users/ingmarkner/JARVIN`
- MCP Config: `.claude-obsidian.json` (Produktionsreifer Status)
- Wiki Structure: Vollständig initialisiert
- Provenance Ledgers: Vorbereitet (leer)

⚠️ **Aktivierungen erforderlich**:
1. **Obsidian Local REST API Plugin** aktivieren (Port 27124)
   - Öffne Obsidian Settings
   - Community Plugins → Durchsuche "Local REST API"
   - Enable & Configure

2. **Erste Entities ingestieren**
   - Projekte, Personen, Organisationen als Seed Pages

3. **Lint durchführen**
   - Nach initialen Ingests

---

## 🚀 Nächste Aktionen

- [ ] **Local REST API aktivieren** (Obsidian)
- [ ] **Initiale Entities** erstellen (Mark Ärner, Projekte, Organisationen)
- [ ] **Erste Sources** in `inbox/` sammeln
- [ ] **Ingest Operation** durchführen (Sources → wiki/sources/)
- [ ] **Lint durchführen** — Überprüfe Konsistenz
- [ ] **Mark OS Cockpit-Integration** planen (künftig)

---

## 📚 Wichtige Seiten

- [[wiki/index.md|Wiki Navigation Index]]
- [[wiki/overview.md|JARVEN Overview & Architecture]]
- [[wiki/log.md|Operation Log]]
- [[wiki/hot.md|Hot Context — Aktuelle Threads]]
- [[wiki/meta/conventions.md|Conventions & Guidelines]]

---

## 🔗 Externe Ressourcen

- **Claude-Obsidian Schema**: Siehe `WIKI.md` (Spec-Referenz)
- **Obsidian Dokumentation**: [obsidian.md](https://obsidian.md)
- **Local REST API Plugin**: [GitHub](https://github.com/coddingtonbear/obsidian-local-rest-api)

---

## 📝 Kontakt & Support

**Vault Betreuer**: Mark Ärner  
**Vault Purpose**: Mark OS Knowledge Backend  
**Created**: 2026-08-01  
**Status**: 🟢 Aktiv & Bereit für Einsatz

---

**JARVEN ist Gedächtnis und Wissensmaschine für Mark OS.**  
*Gebaut mit claude-obsidian.v1 Schema.*
