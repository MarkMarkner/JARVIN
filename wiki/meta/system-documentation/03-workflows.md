---
type: meta
title: Arbeitsweise & Workflows in Claude-Obsidian
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - system
  - workflows
  - operations
  - best-practices
address: doc-workflow-001
---

# Arbeitsweise & Workflows

Empfohlene Arbeitsweisen, Best Practices und häufige Fehler.

---

## 🚀 1. Die 5 Kern-Workflows

### Workflow 1: INGEST (Neue Quellen aufnehmen)

**Schritte**:
1. Quelle in `inbox/` sammeln oder `.raw/` speichern
2. Source-Summary erstellen → `wiki/sources/[Name].md`
3. Entities/Concepts ingestieren (falls nötig)
4. Provenance Ledgers updaten (Source- & Claim-Ledger)
5. `wiki/index.md` updaten (neue Pages verlinken)
6. `wiki/log.md` updaten (Operation registrieren)
7. `wiki/hot.md` updaten (neue Threads/Context)

**Transaktion**: Alles in EINER Bundle.

---

### Workflow 2: QUERY (Wissen abrufen, Read-Only)

**Schritte**:
1. Frage formulieren: "Was weiß ich über X?"
2. Relevante Evidence sammeln (Pages + Sources)
3. Claims qualifizieren (accepted/provisional/contested/unsupported/stale)
4. Vault-Pages & Sources zitieren
5. Gaps aufzeigen ("Das weiß ich nicht")

**Wichtig**: Keine Mutation. Read-only nur.

**Wenn du die Antwort speichern möchtest** → Separate SAVE-Operation.

---

### Workflow 3: SAVE (Genehmigte Inhalte speichern)

**Schritte**:
1. Du wählst Inhalte EXPLIZIT aus (nicht ganze Konversation)
2. Session-Page erstellen oder existierende Page updaten
3. Provenance wo nötig hinzufügen
4. `wiki/index.md` updaten
5. `wiki/log.md` updaten
6. `wiki/hot.md` updaten

**Transaktion**: Separate reviewed operation.

---

### Workflow 4: AUTORESEARCH (Web-Recherche)

**Schritte**:
1. Explizite Frage formulieren
2. Source-Policy definieren (trusted sources only? all sources?)
3. Egress-Consent geben (Web-Access OK?)
4. Stop-Budget definieren (wie lange forschen?)
5. Ergebnisse als Research Dossier speichern
6. Merge zu kanonischen Pages = SEPARATE Operation mit Freigabe

**Wichtig**: Research ist NICHT direkt canonical. Muss reviewed werden.

---

### Workflow 5: LINT (Konsistenz-Check)

**Liest**: Deterministic, read-only. Report:
- Dead/ambiguous links
- Duplicate basenames
- Orphans (Pages ohne Backlinks)
- Missing frontmatter
- Empty sections
- Stale index entries
- Ledger violations

**Reparaturen**: Separate transaction proposals. Du genehmigt.

---

## ✅ 2. Best Practices

### Best Practice 1: "Frontmatter First"
```
Bevor du Inhalte schreibst, definiere:
- type
- title
- status
- tags
- address (optional)

Das strukturiert deinen Gedanken VOR dem Schreiben.
```

### Best Practice 2: "One Concept, One Page"
```
Nicht: wiki/concepts/PARA-Systems-Productivity-Frameworks.md (zu lang)
Sondern:
  - wiki/concepts/PARA-Method.md
  - wiki/concepts/Productivity.md
  - Link zwischen ihnen

Grund: Leichter zu warten, zu verlinken, zu updaten.
```

### Best Practice 3: "Source First Mindset"
```
Bevor du etwas als Fakt behandelst:
→ "Wer sagt das?"
→ "Kann ich das verifizieren?"
→ Link zu [[Source]]

Nicht: "Das ist einfach wahr"
Sondern: "Das ist wahr laut [[Source X]]"
```

### Best Practice 4: "Regular Lint"
```
Nach großen Ingest-Operationen:
→ Führe lint durch
→ Überprüfe auf:
   - Tote Links
   - Duplicate Pages
   - Fehlende Backlinks
   - Frontmatter-Fehler

Regelmäßig: Wöchentlich ideal.
```

### Best Practice 5: "Hot Context pflegen"
```
wiki/hot.md ist bounded (nicht alles, nur wichtiges).
Wöchentlich updaten:
- Neue aktive Threads
- Ungelöste Fragen
- Kürzliche Changes
- Next Actions

Nicht: Transcript-artig
Sondern: Bullets, mit Links zu Details.
```

### Best Practice 6: "Status als Kompass verwenden"
```
Nutze Status sichtbar:
- seed: "Das muss ich noch ausarbeiten"
- developing: "Aktive Arbeit, bitte nicht stabilisieren"
- active: "Das ist gut, regelmäßig nutzen"
- evergreen: "Das ist Referenz, selten ändern"
- deprecated: "Das ist überholt, siehe [[New Page]]"
```

---

## ❌ 3. Häufige Fehler

### Fehler 1: "Dead Links"
```
Problem: Link zu [[Non-existent Page]]
Folge: Navigation bricht, Lint schlägt fehl

Fix:
1. Prüfe: Sollte die Seite existieren?
2. Ja → Erstelle sie
3. Nein → Link löschen oder korrigieren
```

### Fehler 2: "Duplicate Pages"
```
Problem: 
  - wiki/entities/Claude.md
  - wiki/entities/Claude (LLM).md
Folge: Verwirrung, geteilte Inhalte

Fix: Merge + Alias verwenden
```

### Fehler 3: "Keine Quellen-Links"
```
Problem: Claim ohne [[Source]]
  "Mark arbeitet bei Anthropic" (ohne Link)
Folge: Nicht verifizierbar, Claim Ledger unvollständig

Fix: Immer [[Source]] linken wenn Fact
```

### Fehler 4: "Zu lang ohne Struktur"
```
Problem: 10.000-Wort Page ohne Headings
Folge: Unlesbar, nicht navigierbar, nicht suchbar

Fix: Headings gliedern, Sub-Concepts auslagern
```

### Fehler 5: "Symmetrische Backlinks ohne Grund"
```
Problem:
  A → B (sinnvoll)
  B → A (automatisch erzeugt, aber nicht nötig)
Folge: Noise im Graph, überverkupfet

Fix: Nur bidirektionale Links wenn beide Richtungen Navigation hilft
```

### Fehler 6: "Status nie aktualisiert"
```
Problem: Page mit status: seed seit 6 Monaten
Folge: Andere wissen nicht: Ist das noch ein WIP?

Fix: Status aktiv halten basierend auf aktuellem Zustand
```

### Fehler 7: "Alte Inhalte nicht archiviert"
```
Problem: Seite mit veraltete Info, aber nicht als deprecated markiert
Folge: Nutzer nutzen falsche Infos

Fix: deprecated → Nachfolger verlinken
```

---

## 🎯 4. Operationale Checklisten

### Vor neuer Entity-Erstellung
- [ ] Ist das eine stabile Identität? (Ja = weiter)
- [ ] Existiert die Entity bereits? (Nein = weiter)
- [ ] Habe ich mindestens 2-3 Fakten dazu? (Ja = weiter)
- [ ] Kann ich mindestens eine Quelle zitieren? (Ja = erstelle)

### Vor neuer Concept-Erstellung
- [ ] Ist das ein eigenständiges Konzept? (Ja = weiter)
- [ ] Existiert es bereits? (Nein = weiter)
- [ ] Kann ich es in 1 Satz definieren? (Ja = weiter)
- [ ] Habe ich mindestens eine Quelle/Beispiel? (Ja = erstelle)

### Vor Ingest-Operation
- [ ] Alle neuen Pages haben Frontmatter? (Ja)
- [ ] Alle neuen Pages haben Links zu Sources? (Ja)
- [ ] Wiki/index.md ist bereit zu updaten? (Ja)
- [ ] Wiki/log.md ist bereit zu updaten? (Ja)
- [ ] Bin ich sicher mit den Änderungen? (Ja = gehe los)

### Nach Ingest-Operation
- [ ] Alle neuen Pages verlinkt in index.md? ✅
- [ ] Operation im log.md dokumentiert? ✅
- [ ] Hot.md aktualisiert? ✅
- [ ] Lint durchlaufen ohne Fehler? ✅

---

## 🔧 5. Werkzeuge & Befehle

### Bash Commands
```bash
# Struktur überprüfen
find wiki -name "*.md" | wc -l

# Dead Links finden (groß)
grep -r "\[\[.*\]\]" wiki/ | grep -v "wiki/" | head -20

# Bestimmte Entity finden
find wiki/entities -name "*Mark*"

# Größte Dateien
find wiki -name "*.md" -exec wc -l {} \; | sort -rn | head -10

# Ledger durchsuchen
grep -E "source_id|claim_id" wiki/meta/ledgers/*.json
```

### Obsidian Features
```
Ctrl+Shift+G  → Graph View (Relationen visualisieren)
Ctrl+Shift+F  → Search (Fulltext Suche)
Ctrl+K        → Links einfügen
Backlink Pane → Wer verlinkt auf diese Seite?
Outline       → Diese Seite navigieren (Headings)
```

### Claude Commands (künftig)
```
/lint          → Konsistenz-Check durchführen
/ingest        → Neue Quellen aufnehmen
/query         → Wissen abrufen
/index-update  → Index neu generieren
```

---

## 📊 6. Metriken für Gesundheit

Worauf solltest du achten?

```
✅ GRÜN: Vault läuft gut wenn:
- Lint-Fehler: 0-5
- Orphans: 0-2
- Avg Page Links: 3-8
- Status Distribution: Mostly active/evergreen, few seed

⚠️ GELB: Attention needed wenn:
- Lint-Fehler: 6-20
- Orphans: 3-10
- Viele pages mit status: seed (nicht entwickelt)
- Hot.md älter als 1 Woche

🔴 ROT: Problem wenn:
- Lint-Fehler: > 20
- Viele dead links
- Duplicate pages
- Frontmatter konsistent fehlerhaft
- Hot.md älter als 1 Monat
```

---

## 🚀 Zusammenfassung

**5 Workflows**: Ingest, Query, Save, Autoresearch, Lint

**Best Practices**: Frontmatter First, One Concept One Page, Source First, Regular Lint, Hot Context pflegen, Status nutzen

**Fehler vermeiden**: Dead Links, Duplicates, fehlende Sources, zu lange Pages, unnötige Backlinks, ignorierte Status, nicht archivierte Inhalte

**Checklisten nutzen** vor Operationen.

---

**Nächste Schritte:**  
→ [[wiki/meta/system-documentation/04-operations.md|Bedienung & Funktionen]]
