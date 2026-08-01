---
type: meta
title: Wiki Index & Navigation
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - wiki
  - navigation
  - catalog
---

# Wiki Index — JARVEN

Zentrale Navigations- und Katalogseite für die **JARVEN**-Wissensbasis (Gedächtnis für **Mark OS**).

## 🚀 Einstiegspunkte

### Aktuelle Kontexte
- [[wiki/hot.md|Hot Context]] — Aktuelle Fakten, geänderte Seiten, offene Fragen

### Synthesen & Übersichten
- [[wiki/overview.md|Overview]] — High-Level Struktur und Domänen-Karten

### Betrieb & Wartung
- [[wiki/log.md|Operation Log]] — Abgeschlossene Operationen (neueste zuerst)
- [[wiki/meta/conventions.md|Conventions & Guidelines]] — Vault-Regeln und Best Practices

---

## 📂 Wissensdomänen

### Quellen & Evidence
Gespeicherte Quellen, Materialien und Roherfassungen.
- **`wiki/sources/`** — Source-Summaries mit Adressierung und Provenance

### Entitäten
Personen, Organisationen, Produkte, Projekte — alles mit stabiler Identität.
- **`wiki/entities/`** — Entity-Pages (Menschen, Unternehmen, Produkte, Tools)

### Konzepte & Ideen
Frameworks, Mechanismen, Definitionen, Fachbegriffe.
- **`wiki/concepts/`** — Concept-Pages (Ideen, Methoden, Wissen)

### Fragen & Antworten
Scoped questions mit Evidence-Status und zitierten Antworten.
- **`wiki/questions/`** — Question-Pages mit sichtbarem Proof Status

### Visualisierungen & Strukturen
Canvases, Diagramme, mentale Modelle.
- **`wiki/canvases/`** — Obsidian Canvas-Dateien und Strukturdiagramme

### Meta & Ledgers
Indizes, Logs, Caches, Ledger-Einträge.
- **`wiki/meta/ledgers/`** — `source-ledger.json`, `claim-ledger.json`

---

## 📥 Eingang & Roherfassungen

- **`inbox/`** — Sichtbare Source-Aufnahme; bleibt bis zur manuellen Löschung
- **`.raw/`** — Unveränderliche Quellbytes; `.raw/.manifest.json` für Metadata

---

## 🔄 Seite-Typen

| Typ | Zweck |
|-----|-------|
| `source` | Nachverfolgbare Zusammenfassung einer Quelle |
| `entity` | Person, Org, Produkt, Projekt oder benannte Sache |
| `concept` | Idee, Framework, Mechanismus, Definition |
| `question` | Scoped Antwort mit sichtbarem Evidence-Status |
| `comparison` | Kriteriengestützte Gegenüberstellung mit Belegen |
| `session` | Benutzer-genehmigte Zusammenfassung von Gesprächsinhalten |
| `overview` | High-Level Karte einer Domäne oder des Vaults |
| `meta` | Index, Log, Cache, Convention, Wartung |
| `fold` | Extractive Rollup von identifizierten Log-Einträgen |

---

## 🎯 Seite-Status

`seed` | `active` | `developing` | `evergreen` | `answered` | `provisional` | `contested` | `deprecated` | `archived`

---

## 🔗 Verknüpfungsstil

- **Interne Refs**: `[[Target]]` oder `[[Target|Alias]]`
- **Headings & Blöcke**: `[[Target#Heading]]` oder `[[Target#^block]]`
- **Embeds**: `![[Attachment.ext]]`
- **Callouts**: `> [!type] Title`
- **Nur Basis-Links**, wenn eindeutig; Pfade nutzen bei Dubletten
- **Keine symmetrischen Backlinks** ohne Grund — nur navigations-hilfreiche Links

---

## 📊 Provenance-Ledgers

### Source Ledger
Trennt Evidence-Identität von Prosa. Enthält:
- Stabile ID und SHA-256
- Vault-relative oder HTTPS-Locator
- Authority: `official` | `primary` | `secondary` | `community` | `synthetic` | `unknown`
- Review-Status: `unreviewed` | `active` | `superseded` | `rejected`

### Claim Ledger
Falsifizierbare Ansprüche mit Locations, Support/Contra-Sources und Confidence.
- Status: `accepted` | `provisional` | `contested` | `unsupported` | `deprecated`
- Akzeptierte Claims brauchen aktive, frische, nicht-synthetische Support
- Hohe Risiken: zwei unabhängige Quellen erforderlich

---

## ⚙️ Operative Workflows

### Ingest
Create-only raw capture, source summary, entity/concept pages, provenance, index/MOC updates, log, hot cache, overview.

### Query
Read-only. Retrieves evidence set, distinguishes accepted/provisional/contested/unsupported/stale claims, cites pages and sources.

### Save
Nur benutzer-explizit ausgewählter Inhalt. Separate reviewed operation.

### Autoresearch
Explicit question, source policy, egress consent, stop budget.

### Lint
Deterministic read-only: dead links, duplicates, orphans, missing frontmatter, empty sections, stale entries.

---

## ✅ Checklisten & Wartung

- [ ] `doctor` — Vault-Selection verifizieren
- [ ] `lint` — Nach bedeutsamen Operation Batches laufen lassen
- [ ] `transaction recover` — Nach unterbrochene Apply
- [ ] Backups unabhängig von Transaction-Journals halten
- [ ] Configuration als "configured" (nicht "verified") behandeln, bis Behavioral Check bestanden

---

## 📝 Neueste Operationen

Siehe [[wiki/log.md|Operation Log]] für vollständige Historie.

---

*Zuletzt aktualisiert: 2026-08-01*  
*Vault Purpose: Gedächtnis und Wissensmaschine für **Mark OS***
