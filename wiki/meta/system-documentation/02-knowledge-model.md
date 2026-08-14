---
type: meta
title: Wissensmodell von Claude-Obsidian
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - system
  - knowledge-model
  - organization
  - documentation
address: doc-model-001
---

# Wissensmodell von Claude-Obsidian

Wie Wissen in JARVEN organisiert wird, strukturiert wird und wächst.

---

## 🧠 1. Wissen vs. Daten

### Daten (Raw)
```
Einzelne Fakten, Beobachtungen, unverarbeitet
Beispiel: "Mark arbeitet bei Anthropic"
```

### Information (Strukturiert)
```
Daten mit Kontext
Beispiel: 
  - Mark (PERSON)
  - works_at (RELATION)
  - Anthropic (ORGANIZATION)
```

### Wissen (Vernetzt)
```
Informationen mit Bedeutung, Relationen, Kontext
Beispiel:
  Mark
  ├─ works_at → Anthropic
  ├─ understands → AI Safety
  ├─ founded → JARVEN (PROJECT)
  └─ uses → PARA-Method (CONCEPT)
```

**JARVEN** speichert primär **Information** (strukturierte Daten).  
**Wissen** entsteht durch deine Interpretation der Informationen.

---

## 📋 2. Wann entstehen neue Seiten?

### 2.1 Neue ENTITY-Seite entsteht wenn:

```
✅ PERSON mit stabiler Identität & relevantem Kontext
   - Name
   - Rolle/Funktion
   - Verbindungen zu Personen/Orgs/Projekten
   - Beispiel: Mark Markner, Steve Jobs, Alice Chen

✅ ORGANIZATION mit stabiler Identität
   - Name (eindeutig)
   - Beschreibung
   - Mitglieder/Struktur
   - Beispiel: Anthropic, NASA, Startup XYZ

✅ PRODUCT (Software, Hardware, Service) mit Identität
   - Name
   - Entwickler
   - Funktionen
   - Beispiel: Claude (AI Model), iPhone (Hardware)

✅ PROJECT mit definierten Zielen
   - Name & Beschreibung
   - Goals & Outcomes
   - Timeline
   - Team/Owner
   - Beispiel: Apollo 11, JARVEN, Mark OS
```

### 2.2 Wann NICHT?

```
❌ Temporäre Events ohne bleibende Bedeutung
   (z.B. einzelne Meetings)

❌ Personen mit nur flüchtiger Relevanz
   (z.B. Fremde aus der Fußgängerzone)

❌ Unternehmen, die nicht relevant für dein Ökosystem sind
   (z.B. zufällige Konkurrenten)

❌ Duplicate-Personen (z.B. zwei "John Smith")
   → Stattdessen: path-basierte Links [[company/John Smith]]
```

---

## 🔧 3. Wann werden bestehende Seiten erweitert?

### 3.1 Regeln zum Erweitern

**Regel 1: "Wenn neue Information passt, dann erweitern"**
```
Seite: Mark Markner
Neue Info: "Mark hat neuen Job bei X"
→ Section "Career" updaten
→ `updated` Datum ändern
```

**Regel 2: "Wenn es eine eigenständige Idee ist, neue Seite"**
```
Seite: Mark Markner
Neue Info: "Mark hat eine Theorie über Wissensmanagement"
→ Neue Seite: wiki/concepts/Mark's Knowledge Theory.md
→ Link von Mark Markner zu neuer Seite hinzufügen
→ wiki/index.md updaten
```

**Regel 3: "Wenn zu lange wird, auslagern"**
```
Seite: Anthropic (→ 5000 Worte)
→ Lagere Unterkategorien aus:
   - wiki/entities/Anthropic-History.md
   - wiki/entities/Anthropic-Research.md
→ Hauptseite: Links zu Sub-Seiten
```

**Regel 4: "Status für Evolution verwenden"**
```
Seite mit status: seed (neu)
  → Minimal Content OK
  
Seite mit status: developing
  → Aktive Arbeit, noch unvollständig
  
Seite mit status: active
  → Stabil, regelmäßig aktualisiert
  
Seite mit status: evergreen
  → Stabil, selten geändert
```

---

## 🔗 4. Regeln für Verlinkungen

### 4.1 Das Linking-Spektrum

**TIER 1: Mandatorische Links** (MÜSSEN existieren)
```
Jeden Entity auf Quellen verlinken:
  Mark Markner → [[wiki/sources/LinkedIn Profile Mark]]
  Anthropic → [[wiki/sources/Anthropic Official]]

Jede Antwort auf eine Question auf Belege verlinken:
  "Warum ist X wahr?" → [[wiki/sources/Paper XYZ]]
```

**TIER 2: Starke Relationen** (SOLLTEN existieren)
```
Entity zu Entity (Arbeit, Gründung, Leitung):
  Mark Markner → works_at → [[Anthropic]]
  Steve Jobs → founded → [[Apple]]

Entity zu Concept (Verständnis, Anwendung):
  [[Mark Markner]] uses [[PARA-Method]]
```

**TIER 3: Schwache Relationen** (Kontext-abhängig)
```
Concept zu Concept (verwandt, inspiriert):
  [[Systemdenken]] influenced [[Emergence]]
  
Entity zu Question (betroffen von):
  [[Question: Should we scale?]] relates_to [[Project X]]
```

**TIER 4: Optionale Links** (Wenn Navigation hilft)
```
Backlinks (nur wenn sinnvoll):
  [[Anthropic]] könnte verlinken zu [[Mark Markner]]
  (nur wenn Nutzer von Anthropic → Mark Markner navigieren würde)
```

### 4.2 Link-Qualitätsregeln

**Eindeutigkeit**:
```
RICHTIG: [[PARA-Method]]  (eindeutiger Name)
FALSCH:  [[PARA]]          (ambiguos: Person? Concept?)
FIX:     [[concepts/PARA-Method]] (Pfad disambiguiert)
```

**Kontextuelle Klarheit**:
```
FALSCH: "[[Claude]] ist [[AI]]"
        (Relationen unklar)

RICHTIG: "[[Claude]] ist ein Sprachmodell von [[Anthropic]], 
          das auf [[Constitutional AI]] trainiert wurde"
         (Relationen: is_model_of, trained_on, uses)
```

**Keine toten Links**:
```
RICHTIG: [[Existing Page]]
FALSCH:  [[Non-existent Page]]

Wenn du nicht sicher bist, ob Seite existiert:
→ Frag: "Sollte ich diese Seite erstellen?"
```

**Symmetrie nur wo sinnvoll**:
```
A → B macht Sinn?
B → A auch nötig?

Beispiel OK:
  Mark Markner → works_at → Anthropic
  Anthropic → employs → Mark Markner
  (Beide Richtungen gleich wertvoll)

Beispiel NICHT OK:
  [[Question: How to learn?]] → relates_to → [[Learning]]
  [[Learning]] → relates_to → [[Question: How to learn?]]
  (Backlink ist Noise, nicht Navigation)
```

---

## 🎯 5. Duplikat-Handling

### 5.1 Wann ist etwas ein Duplikat?

```
DUPLIKAT: Zwei Seiten für DIESELBE Entity
  - wiki/entities/Claude.md
  - wiki/entities/Claude (LLM).md
  → Mergeln! Nur EINE behalten.

NICHT-DUPLIKAT: Zwei unterschiedliche Konzepte
  - wiki/concepts/Systemdenken.md
  - wiki/concepts/Systems Thinking.md
  → OK, wenn verschiedene Sprachen/Kontexte
  → Oder: Alias verwenden statt zwei Seiten
```

### 5.2 Duplikat-Auflösung

**Option A: Mergeln**
```
1. Welche Seite hat mehr Content?
2. Diese behalten, andere als Basis nehmen
3. Alles zusammenführen
4. Alte Seite löschen (oder → redirect)
5. Links aktualisieren
6. wiki/index.md updaten
7. wiki/log.md: "op-merge-001" registrieren
```

**Option B: Alias verwenden**
```
Hauptseite: wiki/entities/Claude.md
```yaml
---
aliases:
  - Claude (LLM)
  - Claude Sonnet
  - Claude 3.5
---
```

Dann: [[Claude (LLM)]] funktioniert (wird zu [[Claude]])
Vorteile: Keine doppelte Seite, aber flexible Links
```

**Option C: Disambiguierung per Pfad**
```
Wenn zwei unterschiedliche "Claude" existieren:
  wiki/entities/ai/Claude.md (AI Model)
  wiki/entities/people/Claude.md (Person)

Links:
  [[ai/Claude]] vs [[people/Claude]]
```

---

## 🔄 6. Merge vs. Link (Entscheidungslogik)

### Merge wenn:
```
✅ Dieselbe Entity mit zwei Namen
  → Merge + Alias verwenden

✅ Redundante Informationen
  → Zusammenführen, Duplikate entfernen

✅ Unterschiede sind nur Perspektive
  → Eine Seite, mehrere Sichten
```

### Link stattdessen wenn:
```
✅ Zwei unterschiedliche Entities
  → Getrennte Seiten, Link verbinden

✅ Verwandte aber eigenständige Konzepte
  → Separate Seiten, Related_to Link

✅ Hierarchie (Parent ↔ Child)
  → Parent-Seite mit Link zu Children
```

---

## 📚 7. Content-Struktur pro Seitentyp

### Entity-Struktur
```markdown
# [Name]

## Overview
[1-2 Sätze: Was ist das?]

## [Relevant Sections]
[Context-spezifische Inhalte]

## Relationen
- Verbunden zu: [[Related Entity]]
- Leitet: [[Project]]
- Nutzt: [[Concept]]

## Quellen
- [[Source 1]]
- [[Source 2]]
```

### Concept-Struktur
```markdown
# [Concept]

## Definition
[Klare Definition]

## Kernprinzipien
[Grundlagen]

## Verwandte Konzepte
- [[Related Concept 1]]
- [[Related Concept 2]]

## Praktische Anwendungen
[Wo wird es genutzt?]

## Quellen
- [[Source Definition]]
```

### Question-Struktur
```markdown
# [Question?]

## Frage
[Klare Formulierung]

## Beste aktuelle Antwort
[Antwort oder "Unzureichende Belege"]

## Evidence Status
- Supported: [[Source 1]], [[Source 2]]
- Contradicting: [[Source 3]]
- Confidence: high/medium/low

## Belege
- [[Source X]]: [Spezifischer Punkt]
```

---

## 🛡️ 8. Änderungsmanagement

### Kleine Änderung (Update)
```
Seite: wiki/entities/Mark Markner.md
Ändere: Neue Fähigkeit hinzufügen
→ updated: 2026-08-02
→ Status bleibt gleich
→ wiki/log.md: "Minor update: added skill"
```

### Große Änderung (Überarbeitung)
```
Seite: wiki/concepts/PARA-Method.md
Ändere: Komplette Neubewertung des Konzepts
→ status: developing (nicht mehr evergreen)
→ updated: 2026-08-02
→ wiki/log.md: "Comprehensive revision: new framework"
→ Älterer Inhalt in "History" Sektion archivieren (optional)
```

### Status-Änderung
```
Question war: status: developing
Wird: status: answered
→ updated: 2026-08-02
→ wiki/log.md: "Question answered based on [sources]"
```

---

## 📊 9. Wissens-Wachstum über Zeit

### Phase 1: Seeding (Seed Status)
```
Neue Entity/Concept mit minimalem Content
- Name & Basic Description
- 1-2 Links zu verwandtem
- Status: seed
```

### Phase 2: Development (Developing Status)
```
Aktive Arbeit auf der Seite
- Mehr Content hinzufügt
- Relationen wachsen
- Status: developing
- Regelmäßige Updates
```

### Phase 3: Stabilization (Active Status)
```
Seite ist solide & nutzbar
- Vollständiger Content
- Gute Relationen
- Status: active
- Regelmäßige aber nicht ständige Updates
```

### Phase 4: Maturity (Evergreen Status)
```
Seite ist stabil & dauerhaft
- Kompletter, zuverlässiger Content
- Alle Relationen optimal
- Status: evergreen
- Selten aktualisiert (nur Fehler/große News)
```

### Phase 5: Deprecation (Deprecated/Archived)
```
Seite ist überholt oder historisch
- Status: deprecated oder archived
- Links zu Nachfolger-Seiten
- Inhalt bleibt für History
- Backlinks aktualisiert zu Nachfolgern
```

---

## 🎯 Zusammenfassung

**Wissensmodell-Regeln**:
1. Neue Entity wenn: Stabile Identität + Relevanz
2. Erweitern wenn: Neue Info passt in existierende Seite
3. Link wenn: Zwei Seiten sind sachlich verbunden
4. Merge wenn: Dieselbe Entity mit unterschiedlichen Namen
5. Status trackt Evolution von Seed → Evergreen
6. Duplikate werden aufgelöst (merge oder alias)
7. Alle Claims sollten Quellen-Links haben

---

**Nächste Schritte:**  
→ [[wiki/meta/system-documentation/03-workflows.md|Workflows & Arbeitsweise]]
