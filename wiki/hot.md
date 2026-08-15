---
type: meta
title: Hot Context
status: active
created: 2026-08-01
updated: 2026-08-14
tags:
  - wiki
  - context
  - current
address: hot-001
---

# Hot Context — JARVEN

Sanitierte, begrenzte, aktuelle Kontexte für die nächste Session.

> Enthält: Aktuelle Fakten, geänderte Seiten, aktive Threads, ungelöste Fragen  
> **Enthält NICHT**: Secrets, Raw Transcripts, Tool Instructions, Unqualifizierte Claims

---

## 🎯 Aktuelle Zwecke

**JARVEN** ist live und bereit als **Gedächtnis für Mark OS**.

- **Status**: Wiki-Struktur initialisiert und konfiguriert
- **Mode**: PARA (Projects, Areas, Resources, Archive)
- **Cockpit Target**: Mark OS (künftige Dashboard/Kontrollzentrale)

---

## 📋 Aktive Threads

### 1. Wiki-Grundstruktur & Automation (2026-08-01 → 2026-08-14)
- ✅ Ordner-Hierarchie erstellt
- ✅ Core Pages: `index.md`, `log.md`, `hot.md`, `overview.md`
- ✅ MCP-Konfiguration aktiv
- ✅ `.gitignore` finalisiert
- ✅ Lint durchgeführt: 0 Fehler
- ✅ Local REST API: AKTIV (Port 27124, HTTPS, API Key configured)
- ✅ GitHub Remote: VERBUNDEN (SSH auth aktiv)
- ✅ **Szenario 3 AKTIVIERT**: Auto-Session-Management
  - Context-Monitoring aktiv (warnt ab 75%, agiert bei 95%)
  - Auto-Save bei kritischer Auslastung
  - Neue Konversation startet automatisch
  - Kontext wird automatisch geladen
- ✅ **Option A AKTIVIERT**: Automatische tägliche Sessions
  - Neue Session-Datei pro Tag (YYYY-MM-DD)
  - Alte Sessions werden NICHT überschrieben
  - Saubere, chronologische Struktur
  - Dokumentation: `.claude/vault-session-config.md`
- ✅ **Nächste Schritte** (Priorität, für nächste Session): 
  - [ ] Entity "Mark Markner" vervollständigen
  - [ ] Weitere Entities: Anthropic, Mark OS Project
  - [ ] Erste Source ingestieren (wiki/sources/)
  - [ ] Source-Ledger mit Einträgen füllen
  - [ ] Claims in Claim-Ledger dokumentieren

### 2. Provenance-Ledgers (2026-08-01)
- ⏳ Templates erstellt (`source-ledger.json`, `claim-ledger.json`)
- ⏳ Erste Sources ingestieren und addressieren

### 3. Mark OS Cockpit-Integration (Künftig)
- ⏳ REST API (Local REST API Plugin) aktivieren (Port 27124)
- ⏳ Query-Interface für Mark OS vorbereiten
- ⏳ Dashboard-Queries definieren (active projects, key entities, decisions)

---

## ❓ Ungelöste Fragen

1. Wie viele **Entities** (Unternehmen, Personen, Projekte) sollen initialisiert werden?
2. Gibt es initiale **Sources** (Dokumente, Links), die sofort ingestiert werden sollen?
3. Welche **Top-Level Domains** für die PARA-Struktur definieren (z.B. Projects, Areas of Focus)?
4. Wann wird **Local REST API Plugin** in Obsidian aktiviert?

---

## 🔧 Technische Status

| Komponente | Status | Details |
|-----------|--------|---------|
| Vault Root | ✅ | `/Users/ingmarkner/JARVIN` |
| MCP Config | ✅ | `.claude-obsidian.json` aktiv |
| Folder Structure | ✅ | Alle Dirs erstellt |
| Core Pages | ✅ | index, log, hot, overview |
| Ledger Templates | ⏳ | Vorbereitet, leer |
| Local REST API | ❌ | Port 27124 — Plugin aktivieren |
| .gitignore | ⏳ | Zu konfigurieren |

---

## 📌 Wichtige Notizen für nächste Session

1. **Obsidian Local REST API aktivieren**: Vault öffnen → Settings → Community Plugins → Local REST API → Enable (Port 27124)
2. **PARA Structure klären**: Welche Top-Level Areas/Projects für JARVEN?
3. **Initial Entities**: Erste Personen, Organisationen, Projekte als Seed-Pages
4. **Inbox Usage**: Quellen zunächst in `inbox/` ablegen, dann ingestieren

---

## 🚀 Nächste Aktionen

- [x] Local REST API Plugin in Obsidian aktivieren
- [x] Initiale Entities-Batch vorbereiten (oder Inbox-Material sammeln)
- [x] `.gitignore` mit `.vault-meta/`, `.raw/.manifest.json` Runtime-States finalisieren
- [ ] Erste `lint`-Run durchführen
- [ ] Provenance-Ledgers in Gebrauch nehmen (erste Source ingestieren)

---

## 🚀 Session 2 Roadmap

**Next Up:**
1. **Session 2** — Michaela Markner Interview (16 Fragen)
   - Investorin-Profil vervollständigen
   - Fix & Flip Kapitalvertrag klären
   - Holding-Partnerschaft dokumentieren

2. **Session 2a** — Ingenieurbüro Markner Interview (16 Fragen)
   - Geschäftsmodell dokumentieren
   - Finanzielle Performance klären (9.000€/Monat)
   - Zukunftsperspektive definieren
   - Rolle in Holding-Struktur

3. **Session 3** — Fix & Flip Detail-Session
   - Agent 1 (Immobilienanalyse) live testen
   - Konkrete Immobilien-Kandidaten analysieren

---

*Zuletzt aktualisiert: 2026-08-14*  
*Gültig für: Nächste Sessions (2, 2a, 3)*
