---
type: meta
title: Sprachrichtlinie für Claudian
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - konfiguration
  - sprache
  - richtlinie
address: sprachrichtlinie-001
---

# 📝 Sprachrichtlinie für Claudian

**Geltung:** Alle Kommunikation mit Mark Markner  
**Status:** ✅ AKTIV (ab 2026-08-18)  
**Priorität:** Sehr hoch

---

## 🎯 Kernregel

**Konsequent auf Deutsch schreiben. Englische Fachbegriffe sind erlaubt und gewünscht.**

---

## ✅ SCHREIB-REGELN

### Sprache
- ✅ **Deutsch** — Alle Texte, Dokumentation, Erklärungen
- ✅ **Deutsche Struktur** — Sätze, Absätze, Formatierung
- ✅ **Deutsche Begriffe** — "Entscheidung" statt "Decision", "Automatisierung" statt "Automation"

### Englische Fachbegriffe (Erlaubt)
- ✅ **Technische Begriffe** — "Context", "Git", "Session", "API", "Token"
- ✅ **Tool-Namen** — "GitHub", "Bash", "MCP", "REST API"
- ✅ **Eigennamen** — "Mark Markner", "JARVIN", "Ingenieurbüro Markner"
- ✅ **Code-Elemente** — `@filename.md`, `.claude/settings.json`
- ✅ **Abkürzungen** — "GmbH", "FUF" (Fix-und-Flip), "MAI" (Master-Action-Items)

### Mischsprache (Nicht Erlaubt)
- ❌ "Das ist ein sehr important decision" → ✅ "Das ist eine sehr wichtige Entscheidung"
- ❌ "Wir müssen optimize die Context Usage" → ✅ "Wir müssen die Context-Nutzung optimieren"
- ❌ "Please implement Phase 4" → ✅ "Bitte implementiere Phase 4"

---

## 📋 ANWENDUNGSBEISPIELE

### Technische Dokumentation (Deutsch + Fachbegriffe)
```
❌ FALSCH:
"The automation monitoring system provides real-time alerts when context usage reaches critical levels."

✅ RICHTIG:
"Das Automatisierungs-Monitoring-System bietet Echtzeit-Warnungen, wenn die Context-Nutzung kritische Werte erreicht."
```

### Erklärungen (Deutsch + Englisch Fachbegriffe)
```
❌ FALSCH:
"We need to implement a smart loading strategy for better performance."

✅ RICHTIG:
"Wir müssen eine intelligente Smart-Loading-Strategie implementieren, um bessere Performance zu erreichen."
```

### Code & Konfiguration (Englisch + Deutsch)
```
✅ RICHTIG (Englisch bleibt):
- `.claude/settings.json`
- `@Session-3`
- `wiki/hot.md`
- "Lade die Datei mit @filename.md"

⚠️ AUCH RICHTIG (Deutsche Erklärung):
"Erstelle eine neue Session mit dem Befehl: @Session-neue-datei"
```

---

## 🎯 FAUSTREGELN

### Wenn Zweifel:

**1. Kann ich es auf Deutsch sagen?**
- JA → Auf Deutsch schreiben
- NEIN → Englischen Fachbegriff nutzen

**2. Ist es ein Fachbegriff?**
- JA → Englisch erlaubt (Context, API, Git, etc.)
- NEIN → Deutsch nutzen

**3. Wird es besser verständlich mit Englisch?**
- JA → Englisch + Deutsche Erklärung
- NEIN → Nur Deutsch

---

## 📚 GLOSSAR (Deutsch + Englisch)

| Englisch | Deutsch | Nutzung |
|----------|---------|---------|
| Context | Context | Fachbegriff (nicht übersetzen) |
| Token | Token | Fachbegriff (nicht übersetzen) |
| Session | Sitzung | Beide erlaubt |
| Automation | Automatisierung | Beide erlaubt |
| Workflow | Arbeitsablauf | Beide erlaubt |
| API | API | Fachbegriff (nicht übersetzen) |
| Repository | Repository | Fachbegriff (nicht übersetzen) |
| Commit | Commit | Fachbegriff (nicht übersetzen) |
| Branch | Zweig | Beide erlaubt, "Branch" häufiger |
| Monitoring | Überwachung | Beide erlaubt |

---

## ✅ CHECKLISTE (Vor jeder Antwort)

- [ ] Alle Erklärungen auf Deutsch?
- [ ] Englische Fachbegriffe korrekt genutzt?
- [ ] Keine Mischsprache (Denglisch)?
- [ ] Formatierung & Struktur deutsch?
- [ ] Code/URLs/Konfiguration unverändert?

---

## 🚨 HÄUFIGE FEHLER (Vermeiden!)

| Fehler | Korrektur |
|--------|-----------|
| "Optimiere die Performance" | "Optimiere die Leistung" |
| "Das ist very important" | "Das ist sehr wichtig" |
| "Implement the changes" | "Implementiere die Änderungen" |
| "Make a decision" | "Treffe eine Entscheidung" |
| "File management system" | "Dateiverwaltungs-System" |

---

## 📝 BEISPIEL EINER GUTEN ANTWORT

```
Deine Frage:
"Warum ist Context wichtig für die Workflow-Effizienz?"

✅ GUTE ANTWORT (Deutsch + Englische Fachbegriffe):

Der Context ist die verfügbare Token-Menge, die wir pro Session nutzen können. 
Mit 400.000 Tokens pro Conversation haben wir ein Limit, das wir intelligent 
einteilen müssen.

Deshalb implementieren wir eine Smart-Loading-Strategie:
- Lightweight-Modus: Nur 5 essentielle Dateien (9% Context)
- Selective-Imports: @filename.md für spezifische Dateien
- Auto-Summarization: Alte Sessions komprimieren (98% Ersparnis)

Das ermöglicht dir, 8+ Stunden pro Session zu arbeiten, statt nur 2-3 Stunden.
```

---

## 🎯 GELTUNGSBEREICH

Diese Richtlinie gilt für:
- ✅ Alle Antworten an Mark Markner
- ✅ Alle Dokumentationen im Vault
- ✅ Alle Erklärungen & Anleitungen
- ✅ Alle Meta-Dateien & Konfigurationen

---

## 🔄 AKTUALISIERUNGEN

- **2026-08-18:** Richtlinie erstellt & aktiviert
- **Künftig:** Wird bei Bedarf angepasst

---

**Status:** ✅ AKTIV & BINDEND  
**Geltung:** Ab sofort (2026-08-18)  
**Autor:** Claude (Claudian)  
**Für:** Mark Markner
