---
type: meta
title: System-Grenzen & Automatisierungsrichtlinien
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - system
  - boundaries
  - automation
  - safety
address: doc-bounds-001
---

# System-Grenzen & Automatisierungsrichtlinien

Was sollte automatisch erfolgen, was niemals, und welche Entscheidungen brauchen immer deine Freigabe.

---

## ✅ 1. Was SOLLTE Claude automatisch tun

### 1.1 Routinierte Struktur-Aufgaben

```
✅ Automatisch OK:
- Neue Datei mit korrektem Frontmatter erstellen
- Links formatieren [[Name]]
- Typos korrigieren (wenn offensichtlich)
- Wiki/index.md aktualisieren (bei neuer Entity)
- Wiki/log.md Operation registrieren
- Ledger-Einträge hinzufügen (strukturell)
- Alte Status-Archive anlegen
- Broken Links fixen (offensichtlich)
```

### 1.2 Analyse-Aufgaben

```
✅ Automatisch OK:
- Duplikate identifizieren
- Dead Links finden
- Orphan Pages identifizieren
- Lint durchführen
- Strukturelle Fehler identifizieren
- Fehlende Frontmatter-Felder finden
- Report generieren
```

### 1.3 Read-Only Operationen

```
✅ Immer OK:
- Vault durchsuchen
- Inhalte analysieren
- Relationen visualisieren (Berichte)
- Statistiken erstellen
- Struktur-Diagramme generieren
```

---

## ❌ 2. Was NIEMALS automatisch erfolgen darf

### 2.1 Daten-Mutationen ohne Freigabe

```
❌ NIEMALS automatisch:
- Entity-Inhalte verändern (type, definition, Eigenschaften)
- Seitentyp ändern (concept → entity)
- Status ändern (active → deprecated)
- Entities löschen (nur archive mit Freigabe)
- Relationen ENTFERNEN (nur mit Freigabe)
- Historische Inhalte ändern
```

### 2.2 Struktur-Änderungen ohne Freigabe

```
❌ NIEMALS automatisch:
- Neue Folder erstellen
- Naming-Konventionen ändern
- Frontmatter-Struktur ändern
- Ledger-Format ändern
- .gitignore modifizieren
- Architektur-Änderungen
```

### 2.3 Kreative Entscheidungen ohne Freigabe

```
❌ NIEMALS automatisch:
- Entities zusammenmergen (Duplikate)
- Entity-Definitionen ändern
- Neue Seitentypen erfinden
- Relationen interpretieren
- Claims als "accepted" bewerten
- Quellen-Authority verändern
```

---

## ⚠️ 3. Was "Freigabe erforderlich" bedeutet

### Definition

```
"Freigabe erforderlich" = Du musst explizit sagen:
"Ja, mach das" oder "Nein, mach das nicht"

Nicht: "Das scheint OK, also mach's"
Sondern: "Hier ist genau was ich möchte"
```

### Wie Freigabe-Prozess funktioniert

```
1. Claude: "Ich würde gerne X tun"
2. Claude: "Hier ist der Plan:..."
3. Du: "OK, gib mir ein Vorschau/Plan"
4. Claude: [zeigt genau, was verändert wird]
5. Du: "✅ Freigegeben" oder "❌ Nein, verändere..."
6. Claude: [Führt aus oder anpasst]
```

**Wichtig**: Du musst SEHEN können, was gemacht wird.

---

## 🎯 4. Operationen, die Freigabe brauchen

### 4.1 Ingest-Operationen

```
BRAUCHT FREIGABE:
✓ Neue Quelle ingestieren
✓ Neue Entity erstellen
✓ Neues Concept anlegen
✓ Neue Question formulieren
✓ Provenance-Ledger ändern
```

**Freigabe-Prozess**:
```
1. Claude: "Hier sind die neuen Seiten die ich erstelle:"
   [Zeigt Frontmatter + Snippet von Inhalten]
2. Du: "OK" oder "Ändere X in Y"
3. Claude: [Erstellt oder anpasst]
4. Claude: [aktualisiert Index + Log]
```

### 4.2 Architektur-Entscheidungen

```
BRAUCHT FREIGABE:
✓ Neue Folder-Struktur
✓ Neue Seitentypen
✓ Neue Status-Werte
✓ Neue Frontmatter-Felder
✓ Naming-Konventions-Änderungen
```

**Freigabe-Prozess**:
```
1. Claude: "Ich würde die Architektur so ändern:"
   [Zeigt alte vs. neue Struktur]
   [Erklärt Warum]
   [Zeigt Migrations-Plan]
2. Du: "OK, mach's" oder "Nein, verändere zu..."
3. Claude: [Führt durch oder diskutiert Alternativen]
```

### 4.3 Größere Umgestaltungen

```
BRAUCHT FREIGABE:
✓ Duplikate mergen
✓ Pages archivieren
✓ Alte Content-Blocks löschen
✓ Große Refactors
✓ Bulk-Operationen
```

**Freigabe-Prozess**:
```
1. Claude: "Ich hätte gefunden, dass X und Y Duplikate sind"
   [Zeigt beide Seiten]
   [Empfiehlt: Merge oder Keep Separate?]
2. Du: "Ja, merge sie" oder "Nein, halten separate"
3. Claude: [Führt durch oder erklärt warum nicht sinnvoll]
```

---

## 📋 5. Automatisierungs-Regeln pro Operation

### Operation: Ingest

```
🟢 AUTOMATISCH (ohne Freigabe):
- Source-Metadata extrahieren
- Frontmatter generieren
- Links formatieren
- Ledger-Einträge vorbereiten

🟡 MIT VORSCHAU:
- Neue Entities identifizieren
- Neue Concepts identifizieren
- Entity-Inhalte zusammenfassen
- Links zwischen neuen Pages vorschlagen

🔴 BRAUCHT FREIGABE:
- Datei tatsächlich erstellen
- Index aktualisieren
- Ledger-Änderungen apply
- Log registrieren
- Commit & Push (optional)
```

### Operation: Lint & Repair

```
🟢 AUTOMATISCH:
- Fehler identifizieren
- Report erstellen
- Mögliche Fixes vorschlagen

🔴 BRAUCHT FREIGABE:
- Datei tatsächlich verändern
- Links anpassen
- Duplikate mergen
- Status ändern
```

### Operation: Update

```
🟢 AUTOMATISCH:
- Kleine Typo-Fixes
- Format-Korrektionen
- Datum-Updates

🟡 MIT VORSCHAU:
- Größere Content-Änderungen
- Status-Änderungen
- Link-Additions

🔴 BRAUCHT FREIGABE:
- Inhaltliche Umdefinitionen
- Entfernung von Abschnitten
- Archivieren
```

---

## 🛡️ 6. "Emergency Stop" Regeln

Wenn Claude etwas macht, das falsch ist:

```
Du kannst IMMER sagen:
"Stop! Undo das."

Ich werde dann:
1. Nicht weiter ändern
2. Fragen: "Sollen wir das zurück-rollen?"
3. Nicht defensiv reagieren
4. Dich fragen, was falsch war
5. Plan korrigieren
```

**Es ist DEINE Vault. Du entscheidest.**

---

## 📊 7. Entscheidungs-Matrix

| Operation | Typ | Automatisch | Mit Vorschau | Freigabe |
|-----------|-----|------------|--------------|----------|
| Neue Entity | Create | Nein | Ja | Ja ✓ |
| Entity-Inhalte ändern | Update | Nein | Ja | Ja ✓ |
| Dead Link fixen | Repair | Ja | Ja | Nein |
| Entity archivieren | Archive | Nein | Ja | Ja ✓ |
| Duplikate mergen | Merge | Nein | Ja | Ja ✓ |
| Source ingestieren | Ingest | Nein | Ja | Ja ✓ |
| Lint durchführen | Analyze | Ja | Ja | Nein |
| Index updaten | Structural | Nein | Nein | Ja ✓ |
| Log registrieren | Structural | Nein | Nein | Ja ✓ |
| Typo korrigieren | Fix | Ja | Nein | Nein |

---

## 🎯 8. Best Practices für Freigaben

### Gebe Kontext

```
Besser:
"Erstelle Entity für Anthropic, mit Fokus auf AI Safety"

Statt:
"Erstelle Entity für Anthropic"
```

### Frag nach Unsicherheiten

```
Wenn Claude fragt: "Sollte ich das tun?"
Antworte nicht: "Ja" oder "Nein"
Sondern: "Ja, weil..." oder "Nein, weil... Mach stattdessen..."
```

### Review vor Commit

```
Vor großen Operationen:
1. Claude zeigt: "Hier sind die Änderungen"
2. Du: [Schaust die Diffs an]
3. Du: [Gibst Freigabe oder Feedback]
4. Claude: [Führt durch]
```

---

## ⚡ 9. Eskalations-Regeln

### Wenn Claude unsicher ist

```
Claude sollte FRAGEN, nicht raten:
"Bin ich mir nicht sicher. Sollen wir:
 A) [Option 1]
 B) [Option 2]
 C) [Option 3]?"

Du antwortest: "A, weil..."
```

### Wenn du unsicher bist

```
Du fragst: "Ist das OK?"
Claude: "Hier sind die Pros & Cons:..."
Du: [Entscheidest]
```

### Wenn Konflikt

```
Claude: "Das könnte kaputt gehen, hier's warum..."
Du: "OK, mach's trotzdem" oder "Nein, Alternativen?"
Claude: [Respektiert deine Entscheidung]
```

---

## 📌 Zusammenfassung

**Automatisch**: Struktur, Analyse, Read-Only

**Mit Vorschau**: Größere Changes, neue Pages (Plan zeigen)

**Freigabe**: Alles das Wissen verändert, Architektur ändert, Entities archiviert

**Regel**: Du entscheidest immer. Ich bin nur Assistent.

---

**Nächste Schritte:**  
→ [[wiki/meta/system-documentation/06-extensions.md|Ideen & Erweiterungen]]
