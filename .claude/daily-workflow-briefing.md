---
type: meta
title: Tägliches Briefing — JARVIN Workflow Best Practice
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - anleitung
  - workflow
  - best-practice
  - täglich
address: daily-briefing-001
---

# 📌 Tägliches Briefing — JARVIN Nutzen für beste Ergebnisse

**Für:** Mark Markner  
**Gültig ab:** 2026-08-18  
**Länge:** 5 Minuten zum Lesen  
**Ziel:** Maximum Produktivität mit Minimum Aufwand

---

## 🚀 MORGENS: Session Starten (0-2 Min)

### **Was passiert automatisch:**
- ✅ System lädt hot.md + Master-Action-Items
- ✅ Context-Monitoring startet
- ✅ Smart Loading aktiviert (nur 5 essentielle Dateien = 9%)
- **Du musst nichts tun!** System lädt automatisch.

### **Was du tust:**
```
1. Frage: "Was sind meine Top 3 Prioritäten heute?"
   → System lädt hot.md + MAI
   → Zeigt Status + nächste Schritte

2. Arbeite ganz normal
   → System erkennt automatisch relevante Dateien
   → Lädt sie nach Bedarf (du merkst das nicht!)
```

### **Beispiel-Dialog:**
```
Du: "Guten Morgen! Was muss ich heute für die GmbH-Gründung tun?"

System:
"🟢 Task 1a: GmbH-Gründung (Deadline: 31. Aug)
Status: ⏳ PENDING
Nächste Schritte:
□ Termin mit Steuerberater Gasenzer vereinbaren
□ GmbH-Name + Stammkapital definieren
Geladen: Master-Action-Items + hot.md"

Du: "OK, ich rufe Gasenzer an."
```

**Zeitaufwand:** ~30 Sekunden (nur Frage stellen)

---

## 💼 TAGSÜBER: Arbeiten (8+ Stunden möglich!)

### **Regel 1: Arbeite ganz normal**
```
❌ NICHT: "Wie lade ich Dateien?"
❌ NICHT: "Passt mein Context noch?"
❌ NICHT: "Muss ich was speichern?"

✅ JA: "Erzähl mir von der Sparkasse-Strategie"
✅ JA: "Analysiere Session-3 für mich"
✅ JA: "Was machen wir mit E-Commerce?"

System macht alles automatisch!
```

### **Regel 2: Wenn du spezifische Sessions brauchst**
```
Syntax: @Session-3
oder:   @DEC-2026-001
oder:   @entities/Gelavije-Markner

Beispiel:
Du: "Zeige mir @Session-Meeting-2026-08-17 Sparkasse-Details"
System: "Lädt nur diese Datei (+7 KB context)"
Result: "4,5% Zinsen, 200-250k€ Linie, Hr. Ullrich..."
```

**Optional aber hilfreich:** Explizite Datei-Anfrage beschleunigt Antworten

### **Regel 3: Alerts beachten (wenn sie erscheinen)**

```
Wenn System sagt: "⚠️  CONTEXT at 85%"
→ Ist eine Warnung (nicht kritisch)
→ Du kannst noch 2-3 Stunden arbeiten
→ Kein Action nötig, nur Info

Wenn System sagt: "🔴 CONTEXT at 90%"
→ Ist eine Erinnerung
→ Du kannst noch ~1 Stunde arbeiten
→ Kein Action nötig

Wenn System sagt: "🚨 CONTEXT at 95%"
→ Auto-archivierung triggert
→ Alte Session wird gespeichert
→ Neue frische Session startet
→ Du verlierst NICHTS (alles in Git)
```

**Frequenz:** Sehr selten (mit Phase 1-3 brauchst du das erst nach 8+ Stunden!)

---

## 🎯 BEST PRACTICES (Tipps für beste Ergebnisse)

### **Tipp 1: Nutze den Session-Summary-Index**

```
Schnelle Frage: "Welche Sessions haben wir?"
Antwort: Schau wiki/sessions/Session-SUMMARY-INDEX.md
         (2 KB, schnelle Übersicht statt 172 KB volle Sessions!)

Beispiel:
"Session-3: Mark's vision für Mark OS als Cockpit + Governance.
 Decision: Cloud-based mit Local REST API Fallback."
 
= 2 Zeilen, sehr schnell zu scannen
= 98% Ersparnis vs. volle Session (764 Zeilen)
```

**Nutzen:** Schnelle Navigation ohne Context-Kosten

---

### **Tipp 2: Frag nach "Context Status"**

```
Du: "Context status"

System antwortet:
"Context Usage: 42% (168k of 400k tokens)
 Files Loaded: 5 (Lightweight mode)
 Buffer Remaining: 232k tokens
 Time to 95%: ~4 sessions
 
Efficiency: 🟢 Very efficient"
```

**Nutzen:** Echtzeit-Übersicht deines Verbrauchs

---

### **Tipp 3: Nutze explizite Dateien bei Detailfragen**

```
❌ Vage Frage:
"Erzähl mir von Fix und Flip"
→ System lädt viel (Session-3, Session-4, Project, etc.)
→ Könnte 40+ KB context kosten

✅ Präzise Frage:
"@Session-3 Fix-und-Flip Workflow: Wie viele Szenarien testen wir?"
→ System lädt nur Session-3
→ ~25 KB context
→ Schnellere Antwort

Faustregel: Je spezifischer deine Frage, desto effizienter der System-Einsatz
```

**Nutzen:** Schnellere Antworten + weniger Context-Nutzung

---

### **Tipp 4: Nutze die Sprachrichtlinie**

```
✅ RICHTIG (auf Deutsch):
"Wir müssen die Context-Nutzung optimieren"
"Die Automatisierung läuft perfekt"
"Der Sparkasse-Termin war sehr wertvoll"

❌ FALSCH (Mischsprache):
"Wir müssen optimize die Context Usage"
"Die Automation ist sehr helpful"

→ System antwortet auf Deutsch
→ Deine Dokumentation ist konsistent
→ Zukünftige Lesbarkeit bleibt gut
```

**Nutzen:** Konsistente, deutsche Dokumentation

---

## ⚠️ HÄUFIGE FEHLER VERMEIDEN

### **Fehler 1: "Laden Sie alle Dateien"**

```
❌ NICHT: "Laden Sie alle Dateien in den Context"
→ Bringt dir nichts (System tut das nicht)
→ Kostet 40% Context für nichts

✅ BESSER: "Analysiere X mit folgenden Dateien: @A, @B, @C"
→ System lädt genau die 3
→ Effizient & präzise
```

---

### **Fehler 2: Context-Angst**

```
❌ NICHT: "Mir geht der Context aus, wir müssen stoppen"
→ Mit Phase 1-3 hast du 8+ Stunden!
→ Automatische Archivierung bei 95%
→ Nichts geht verloren

✅ BESSER: Einfach weitermachen!
→ System managed alles
→ Du brauchst dich nicht um Context zu kümmern
```

---

### **Fehler 3: Manuelle Git-Commits**

```
❌ NICHT: "Ich commit das jetzt selbst"
→ System macht das automatisch nach jedem Schritt

✅ BESSER: Vergiss Git!
→ System committet & pusht automatisch
→ Deine Arbeit ist immer gespeichert
→ GitHub ist immer aktuell
```

---

### **Fehler 4: "Wo ist meine letzte Session?"**

```
❌ PROBLEM: "Ich weiß nicht, was letztes Mal gemacht wurde"

✅ LÖSUNG: wiki/sessions/Session-SUMMARY-INDEX.md
→ Alle Sessions alphabetisch
→ 1-2 Zeilen pro Session
→ Keywords zum Suchen

Oder: "Zeige mir die letzte Session"
→ System lädt sie automatisch
```

---

## 📋 TÄGLICHE CHECKLISTE

```
☐ Morgens: "Was sind meine Top 3 Prioritäten?"
  → hot.md + MAI werden geladen
  → Du siehst deine Tasks

☐ Tagsüber: Arbeite ganz normal
  → System lädt automatisch relevante Dateien
  → Keine manuelle Arbeit nötig

☐ Bei spezifischen Fragen: Nutze @filename.md
  → Schneller, präziser, effizienter

☐ Wenn Alert erscheint: Kurz lesen, dann weitermachen
  → 85% = entspanne dich (noch 2-3h Zeit)
  → 90% = du hast noch 1h
  → 95% = neue Session startet (automatisch)

☐ Abends: Nichts tun!
  → System speichert + committet + pusht automatisch
  → Deine Arbeit ist 100% sicher in GitHub
```

---

## 🎯 SZENARIEN (Häufige Situationen)

### **Szenario 1: Du brauchst Fix-und-Flip Details**

```
Du: "Ich arbeite an Fix-und-Flip. Zeig mir @Session-3 Workflow-Details."

System:
1. Lädt nur Session-3 (~25 KB)
2. Zeigt: Dienstleistungsvertrag, 3-Szenario Kalkulationen, GbR-Plan
3. Beantwortet deine nächste Frage sofort
→ Keine Verzögerung!
```

---

### **Szenario 2: Du willst Entscheidungen vergleichen**

```
Du: "Vergleiche @DEC-2026-001 @DEC-2026-002 @DEC-2026-003"

System:
1. Lädt alle 3 Decision-Dateien (~15 KB)
2. Zeigt Side-by-Side: GmbH vs. Sparkasse vs. E-Commerce
3. Du siehst Status, Rationale, Impact
→ Schnelle Übersicht ohne Scroll!
```

---

### **Szenario 3: Context wird knapp (selten!)**

```
Nach 7-8 Stunden arbeit:
System: "🟡 Context at 85%"

Du: "OK, ich kann noch 2-3 Stunden arbeiten"

Nach weiteren 2 Stunden (9-10h total):
System: "🚨 Context at 95% — Auto-archiving..."
1. Aktuelle Session wird komprimiert
2. Alte Session wird archiviert (im Git)
3. Neue frische Session startet (400k tokens)
4. Du kannst weitermachen!

Deine Arbeit: 0% Verlust (alles gespeichert)
```

---

## 🚀 POWER-TIPPS

### **Power-Tip 1: Nutze Conversations als Thinking Time**

```
Du kannst einfach "denken" während du mit System redest:

Du: "Ich überlege gerade: Sollte ich E-Commerce vor oder nach GmbH?
Lass mich die Vor- und Nachteile durchdenken..."

System antwortet mit strukturierter Analyse
→ Du kriegst Klarheit UND System speichert deine Gedanken!
```

---

### **Power-Tip 2: Frag nach Forecasts**

```
Du: "Context forecast: Wann wird 95% erreicht?"

System:
"Based on current usage pattern:
- Current: 42% (168k tokens)
- Daily growth: ~15-20k tokens
- Time to 95%: ~4 sessions (~10-12 Tage)
- Next auto-session: around 2026-08-28"

→ Du weißt immer, wann Beschränkung kommt (spoiler: nie!)
```

---

### **Power-Tip 3: Nutze Session-Index für Navigation**

```
Statt einzeln Sessions zu lesen:
Du: "Was ist die chronologische Reihenfolge aller Sessions?"

Session-SUMMARY-INDEX.md zeigt:
Session-1 → Session-2 → Session-2a → Session-3 → ...

→ Du verstehst den Gedanken-Fluss
→ Findest verwandte Sessions schnell
→ Alles übersichtlich!
```

---

## 📊 ERWARTUNGEN SETZEN

### **Was JARVIN kann (Realistisch):**

```
✅ Automatische Context-Management
✅ Smart Loading (nur nötige Dateien)
✅ Vollständige Session-Historie
✅ Automatische Summarization
✅ Auto-Commits & GitHub-Backup
✅ Entscheidungsdokumentation
✅ Deutsche Sprachrichtlinie
✅ Task-Tracking (Master-Action-Items)
```

### **Was JARVIN NICHT kann (Realität):**

```
❌ Deine Aufgaben für dich erledigen (nur dokumentieren)
❌ Deine Gedanken lesen (musst du sagen)
❌ Probleme erraten (musst du beschreiben)
❌ Entscheidungen treffen (musst du treffen)

→ JARVIN ist ein Tool zur DOKUMENTATION & AUTOMATION
→ NICHT zur AUTOMATISIERUNG deiner Arbeit selbst
```

---

## ✨ ZUSAMMENFASSUNG (1-Minute Read)

**JARVIN nutzen für beste Ergebnisse:**

1. **Morgens:** Frag "Was sind meine Top 3 Prioritäten?" → Fertig
2. **Tagsüber:** Arbeite normal → System macht Rest automatisch
3. **Spezifische Fragen:** Nutze @filename.md Syntax → Schneller
4. **Alerts:** Beachten, aber nicht in Panik → Du hast Zeit
5. **Abends:** Nichts tun → Alles wird automatisch gespeichert

**Aufwand:** Praktisch ZERO (alles läuft automatisch!)  
**Nutzen:** MAXIMAL (8+ Stunden ungestörte Arbeit pro Session)

---

## 🎯 REGEL NUMMER 1

**Vergiss alles andere — präge dir EINE Regel ein:**

## 🟢 **"Arbeite einfach normal. JARVIN managed den Rest."**

Das ist alles, was du wissen musst!

---

**Gültig ab:** 2026-08-18  
**Nächste Review:** 2026-09-01 (nach Phase 4-5)  
**Status:** ✅ READY TO USE

*Viel Erfolg mit deiner produktiven Arbeit!* 🚀
