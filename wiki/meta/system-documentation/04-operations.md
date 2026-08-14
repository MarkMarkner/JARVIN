---
type: meta
title: Bedienung & Operationen
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - system
  - operations
  - bedienung
  - tools
address: doc-ops-001
---

# Bedienung & Operationen

Verfügbare Funktionen, Tools, Workflows und Grenzen.

---

## 🖥️ 1. Schnittstellen zu JARVEN

### Schnittstelle 1: Obsidian (UI)
```
Deine primäre Schnittstelle für die Vault.

Was du tun kannst:
✅ Seiten lesen & bearbeiten
✅ Links navigieren
✅ Graph View (Relationen visualisieren)
✅ Suche (Fulltext)
✅ Backlinks sehen
✅ Tags browsen
✅ Plugins nutzen

Was du NOT tun solltest:
❌ .obsidian/ Config direkt bearbeiten (nur über Settings)
❌ .raw/ Dateien modifizieren
❌ Frontmatter manuell kaputt machen
```

### Schnittstelle 2: Claude Code (mich)
```
Ich kann als dein Assistent:

✅ Dateien lesen (Read)
✅ Dateien erstellen/bearbeiten (Write, Edit)
✅ Git Operationen (Commit, Push, Pull)
✅ Bash-Commands ausführen
✅ Neue Seiten basierend auf Regeln erstellen
✅ Struktur-Überprüfungen durchführen
✅ Operationen coordinen (Ingest, Lint, etc.)

Was ich NICHT sollte (ohne deine Freigabe):
❌ Bestehende Inhalte fundamental verändern
❌ Architektur-Änderungen durchführen
❌ Seitentypen ändern
❌ Entities löschen (nur archived)
❌ Große Refactoring ohne Freigabe
```

### Schnittstelle 3: GitHub (Backup & Version Control)
```
Git speichert die History.

Was tracked:
✅ wiki/ Folder (alles)
✅ .claude-obsidian.json
✅ .gitignore
✅ README.md
✅ Dieses System-Dokumentation

Was NOT tracked:
❌ .vault-meta/ (Runtime state)
❌ .obsidian/ (Obsidian UI config)
❌ .env.local (Secrets)
❌ .raw/.manifest.json (Runtime)
```

### Schnittstelle 4: Local REST API (Künftig Mark OS)
```
Port 27124 (HTTPS, selbstsigniert)

Was Mark OS tun kann:
✅ Vault-Inhalte lesen
✅ Entities abrufen
✅ Concepts abfragen
✅ Questions beantworten
✅ Sources verwalten
✅ Dashboards bauen

Token-basiert: API Key in Plugin-Settings
```

---

## ⚙️ 2. Operationen durchführen

### Operation: Neue Entity erstellen

**Obsidian-Weg (Manual)**:
```
1. Neuste Datei: wiki/entities/[Name].md
2. Kopiere TEMPLATE-Entity.md als Basis
3. Passe Frontmatter an (type=entity, entity_type=...)
4. Schreibe Content
5. Füge Links hinzu
6. Speichern
7. Wiki/index.md manuell updaten
```

**Claude-Weg (Assistiert)**:
```
1. Sag: "Erstelle Entity für Mark Markner"
2. Ich frage: Welcher Typ? (person, org, product, project)
3. Ich erstelle die Datei mit Frontmatter
4. Ich updaten wiki/index.md
5. Ich updaten wiki/log.md
6. Fertig, du reviewst & genehmigst
```

### Operation: Seite updaten

**Kleinere Änderung**:
```
Obsidian: Editiere direkt, Speichern, Fertig.
Updaten: updated: [Datum]
Log: Optional (nur wenn relevant)
```

**Größere Änderung**:
```
1. Status ändern zu: developing
2. Updaten: [Datum]
3. Große Änderungen in History-Section dokumentieren
4. wiki/log.md: Operation registrieren
```

### Operation: Lint durchführen

**Manuell (du)**:
```
Obsidian: Plugin? (falls installiert)
Oder: Visuell durchsuchen nach Problemen
```

**Claude-assistiert (ich)**:
```
1. Sag: "Führe Lint durch"
2. Ich scannen alle Seiten auf:
   - Dead Links
   - Duplicate Names
   - Orphans
   - Fehlende Frontmatter
   - Ledger-Fehler
3. Ich report die Probleme
4. Du genehmigst Fixes
5. Ich erstelle Repair-Operation
```

### Operation: Ingest durchführen

**Schritte (zusammen)**:
```
1. Du gibst mir: Quelle (Link, Dokument, Text)
2. Ich erstelle: wiki/sources/[Name].md
3. Ich extrahiere: Entities/Concepts
4. Ich aktualisiere: Ledgers
5. Ich updaten: wiki/index.md
6. Ich updaten: wiki/log.md
7. Ich updaten: wiki/hot.md
8. Du reviewst & genehmigst
9. Commit & Push (optional)
```

---

## 🛠️ 3. Verfügbare Tools

### Tool: Read (Dateien lesen)
```bash
Beispiel: Read wiki/index.md
→ Ich sehe den Inhalt, kann ihn analysieren
```

### Tool: Edit (Dateien verändern)
```bash
Beispiel: Edit wiki/index.md
  old_string: "[Old content]"
  new_string: "[New content]"
→ Ich ändere gezielt, nicht ganze Datei
```

### Tool: Write (Neue Dateien)
```bash
Beispiel: Write wiki/entities/New.md
→ Ich erstelle komplette neue Datei
```

### Tool: Bash (Shell-Befehle)
```bash
Beispiel: find wiki -name "*.md" | wc -l
→ Ich führe aus, sage dir Resultat
```

### Tool: Agent (Delegation)
```
Beispiel: Spawn Agent zum Linken aller Pages
→ Ich lass Agent durchsuchen/analysieren/berichten
```

### Tool: WebFetch (Internet)
```
Beispiel: Hol Inhalt von https://...
→ Ich fetch die URL, speichere in .raw/
→ Erstelle Source-Summary
```

---

## 🚀 4. Slash-Commands (Künftig)

Hier sind Befehle, die ich später automatisieren könnte:

```
/lint              → Konsistenz-Check durchführen
/ingest [source]   → Neue Quelle verarbeiten
/query [question]  → Wissen abrufen
/search [term]     → Fulltext durchsuchen
/link-check        → Dead Links finden
/duplicate-check   → Doppelte Pages finden
/report            → Vault-Report generieren
/index-update      → Index neu generieren
/backup            → Git Commit & Push
/status            → Vault Health-Status
```

**Wichtig**: Diese sind nicht implementiert. Nur Ideen.

---

## 🔗 5. MCP (Model Context Protocol)

**Was ist MCP?**
```
Ein Protokoll, damit Claude mit deinem System kommunizieren kann.

Local REST API Plugin implementiert MCP.
Das ermöglicht Mark OS, JARVEN zu nutzen.
```

**Mögliche MCP-Operationen**:
```
get_vault_info()       → Info über JARVEN
list_entities()        → Alle Entities
get_entity([name])     → Spezifische Entity
search_concepts()      → Concepts durchsuchen
answer_question()      → Question beantworten
get_sources()          → Source-Ledger
```

**Später** wird Mark OS diese Operationen nutzen.

---

## ⚠️ 6. Grenzen & Möglichkeiten

### Was Claude KANN

```
✅ Seiten erstellen (mit deiner Freigabe)
✅ Links hinzufügen (intelligent)
✅ Struktur-Fehler finden
✅ Inhalte analysieren & zusammenfassen
✅ Sources verarbeiten
✅ Operationen coordinen
✅ Vorschläge machen
✅ Fragen beantworten (aus JARVEN)
```

### Was Claude NICHT KANN

```
❌ Automatisch Entities löschen
❌ Architektur ändern ohne Freigabe
❌ Entscheidungen ohne Freigabe treffen
❌ Hallucinationen vermeiden (kann falsch sein)
❌ Echte Logik-Engine (nicht wie eine DB)
❌ Wirklich verstehen (Pattern-Matching)
❌ Mehrere Sessions Memory (jede neu)
```

### Was Mark OS KANN (Künftig)

```
✅ Vault-Inhalte darstellen
✅ Dashboards bauen
✅ Suchen
✅ Alerts & Reminders
✅ Integration mit Kalender/Email
✅ Reporting
✅ Workflows automatiern (mit Grenzen)
```

---

## 🔐 7. Sicherheit & Zugriff

### Wer darf was?

```
Du (Benutzer):
✅ Alles lesen
✅ Alles bearbeiten
✅ Freigaben geben/entziehen
✅ Git Push/Pull

Claude (Assistent):
✅ Alles lesen
⚠️ Schreiben nur mit deiner Freigabe
❌ Löschen (nur archive)
❌ Git Push ohne OK

Mark OS (Cockpit, künftig):
✅ Lesen (via REST API)
⚠️ Schreiben nur über spezifische Endpoints
❌ Direkte Seiten-Edits
```

### Secrets & API Keys

```
GitHub Token:
- Nicht in Dateien speichern
- Nur in Password Manager
- Environment Variable (wenn nötig)

Obsidian Local REST API Token:
- Im Plugin-Settings
- Nicht in Git

Andere Credentials:
- NIEMALS in JARVEN
- NIEMALS in Dateien
- Nur in Password Manager (1Password, Bitwarden)
```

---

## 📊 8. Reporting & Monitoring

### Vault Health-Status

```
Wöchentlich solltest du überprüfen:

✅ Lint-Fehler (sollte < 5 sein)
✅ Dead Links (sollte 0 sein)
✅ Orphans (sollte < 3 sein)
✅ Hot.md Aktualität (sollte < 1 Woche alt sein)
✅ Frontmatter-Konsistenz
✅ Größte Pages (sollte < 5000 Worte sein)
```

### Metriken

```
Anzahl Entities: [Count]
Anzahl Concepts: [Count]
Anzahl Questions: [Count]
Anzahl Sources: [Count]
Link Density: [Durchschnittliche Links pro Seite]
Duplicate Pages: [Count]
Archived Pages: [Count]
```

---

## 🎯 Zusammenfassung

**4 Schnittstellen**: Obsidian (UI), Claude Code (ich), GitHub (Backup), REST API (Mark OS)

**Operationen**: Entity erstellen, Seite updaten, Lint, Ingest

**Tools**: Read, Edit, Write, Bash, Agent, WebFetch

**Slash-Commands**: Künftig (lint, ingest, query, etc.)

**Grenzen**: Ich kann nicht alles allein, brauche deine Freigaben

**Sicherheit**: Secrets nie in Dateien, API Keys in Manager

---

**Nächste Schritte:**  
→ [[wiki/meta/system-documentation/05-boundaries.md|System-Grenzen]]
