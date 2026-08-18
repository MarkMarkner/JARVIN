---
type: meta
title: JARVIN-Füllanleitung — Regeln für Claude zur Meta-Ebene Struktur
status: active
created: 2026-08-17
updated: 2026-08-17
tags:
  - meta
  - regeln
  - guidelines
  - claude
  - tier-1
  - tier-2
  - tier-3
address: meta-jarvin-rules-001
---

# JARVIN-Füllanleitung — Regeln für Claude zur Meta-Ebene Struktur

**Zweck:** Klare Regeln für Claude (JARVIN), wie die Tier 1+2+3 Struktur korrekt gefüllt wird

**Zielgruppe:** Claude/JARVIN (Ausführungs-Agent), Mark Markner (Überprüfung)

**Gültigkeit:** Permanent (alle Tiers)

**Verlinkt zu:**
- [[wiki/meta/conventions.md|Conventions]] — Allgemeine Style-Regeln
- [[wiki/meta/TIER-3-EXECUTION-PLAN.md|TIER-3-EXECUTION-PLAN]] — Was zu füllen ist
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — Operative TODOs

---

## 🌐 SPRACHREGEL #1: 100% DEUTSCH (mit englischen Fachbegriffen)

### Regel:
- ✅ **ALLE Überschriften (##, ###, etc.):** Deutsch
- ✅ **ALLE laufenden Texte:** Deutsch
- ✅ **ALLE Frontmatter-Felder:** Deutsch (z.B. `type`, `title`, `status`, `created`)
- ✅ **Englische Fachbegriffe:** ERLAUBT & ERWÜNSCHT

### Erlaubte englische Fachbegriffe:
```
Technical:   Dataview, Query, Schema, API, JSON, Frontend, Backend
Business:    Holding, GmbH, Entity, Projekt, Automation, Dashboard, Cockpit
Finance:     Cashflow, ROI, Revenue, Profit, Margin, Eigenkapital
E-Commerce:  FBA (Fulfillment by Amazon), Etsy, Shopify, SKU
Real Estate: Fix-und-Flip, Immobilie, Notar, Makler
Process:     Workflow, Trigger, Phase, Milestone, Rollout, Deployment
Marketing:   SaaS, MRR (Monthly Recurring Revenue), CAC (Customer Acquisition Cost)
```

### Verbotene Englische Sektions-Header:
```
❌ ## Purpose → ✅ ## Zweck
❌ ## Status → ✅ ## Status (✅ OK - kurzes Wort wird behalten)
❌ ## Owner → ✅ ## Eigentümer
❌ ## Timeline → ✅ ## Zeitrahmen / Zeitplan
❌ ## Process → ✅ ## Prozess
❌ ## Task → ✅ ## Aufgabe
❌ ## Action → ✅ ## Aktion
❌ ## Notes → ✅ ## Notizen
```

### Beispiel-Konvertierung:

**❌ FALSCH:**
```markdown
## Purpose: Track all decisions

**Timeline:** Sept 2026 → ongoing

**What:** Review past decisions
```

**✅ RICHTIG:**
```markdown
## Zweck: Alle Entscheidungen verfolgen

**Zeitrahmen:** Sept 2026 → laufend

**Was:** Frühere Entscheidungen überprüfen
```

---

## 📋 FÜLLANLEITUNG #1: DECISION-LOG FÜLLEN

### Wann wird gefüllt?
- Nach jeder strategischen Entscheidung von Mark Markner
- Nicht: Nach operativen Entscheidungen

### Format (Englisch Abstammung → Deutsch Füllung):

```markdown
#### **DEC-2026-XXX: [Entscheidungs-Titel]**
- **Datum:** YYYY-MM-DD
- **Entscheidungsträger:** Mark Markner
- **Status:** 🔴 AUSSTEHEND | ✅ ENTSCHIEDEN | ⚠️ REVIDIERT
- **Rationale:** [Kurze Begründung, warum diese Entscheidung wichtig ist]
- **Entscheidung:** JA | NEIN | CONDITIONAL (mit Bedingung)
- **Ergebnis:** [Was ändert sich konkret?]
- **Auswirkung auf Master-Action-Items:** 
  - Task X → AKTIVIERT
  - Task Y → BLOCKIERT bis [Bedingung]
  - Task Z → DEADLINE geändert zu [Datum]
- **Betroffene Entities/Projekte:** [[wiki/entities/...]]
- **Überprüfungs-Notizen (Phase 2):** (wird monatlich gefüllt)
  - [Monat] Review: "War die Entscheidung richtig?"
  - Lernen: "[Was können wir daraus lernen?]"
  - Muster: "[Welches Muster sehen wir bei Marks Entscheidungen?]"
```

### Checkliste (wöchentlich nach Entscheidung):

- [ ] Entscheidungs-ID: DEC-2026-[nächste Nummer] (0-indexed)
- [ ] Titel kurz, prägnant (max 50 Zeichen)
- [ ] Datum: Exakt das Datum, als Entscheidung getroffen wurde
- [ ] Status: Immer ✅ ENTSCHIEDEN wenn dokumentiert (nicht AUSSTEHEND)
- [ ] Rationale: Mindestens 2-3 Sätze, warum diese Entscheidung wichtig ist
- [ ] Entscheidung: Klare JA/NEIN/CONDITIONAL (nicht mehrdeutig)
- [ ] Ergebnis: Konkrete Konsequenzen (z.B. "Task 1a aktiviert")
- [ ] Master-Action-Items aktualisiert? (separat prüfen)
- [ ] Entities/Projekte gelinkt? (müssen existieren)

---

## 📋 FÜLLANLEITUNG #2: AUTOMATIONS-REGISTRY FÜLLEN

### Wann wird gefüllt?

**Initial (TIER 1):**
- Auto spezifiziert: AUTO-XXX.md erstellen
- Status: 🔴 GEPLANT

**Phase 2 (TIER 3):**
- Auto in Entwicklung: Status → 🟡 IN PROGRESS
- Fortschritt % aktualisieren
- Test-Ergebnisse hinzufügen

**Phase 3 (TIER 3):**
- Auto getestet: Status → 🟢 LIVE
- Deploy-Datum: "2026-10-15"
- Monitoring-Ergebnisse: "✅ Alles OK"

### Format:

```markdown
#### **AUTO-XXX: [Automations-Name]**
- **Typ:** [Automations-Kategorie]
- **Phase:** 🟡 Phase 2 | Phase 3
- **Status:** 🔴 GEPLANT | 🟡 IN PROGRESS | 🟢 LIVE
- **Owner:** Claude (Entwicklung) + Mark (Genehmigung)
- **Trigger:** [Wann läuft diese Automation?]
- **Frequenz:** [Täglich/Wöchentlich/Monatlich/Ad-hoc]

**Input-Schema:**
```json
{
  "feld_1": "beschreibung",
  "feld_2": "beschreibung"
}
```

**Output-Schema:**
```json
{
  "result": "beschreibung",
  "status": "GO|NO_GO"
}
```

**Abhängigkeiten:**
- [Liste von Projekten/Daten-Quellen die nötig sind]

**Zeitplan:**
- Start Entwicklung: [Datum]
- Testing: [Datum]
- Mark-Genehmigung: [Datum]
- Deployment: [Datum]
- Monitoring bis: [Datum + 2 Wochen]

**Test-Plan:** [[wiki/meta/automations/AUTO-XXX.md|Detailliert]] oder TBD

**Rollout-Plan:** [[wiki/meta/automations/AUTO-XXX.md|Detailliert]] oder TBD

**Monitoring-Ergebnisse (Phase 3):**
- [Nach Deployment: Funktioniert es? Irgendwelche Probleme?]
```

### Checkliste (monatlich aktualisieren):

- [ ] Status korrekt? (geplant → in progress → live)
- [ ] Fortschritt % realistisch? (nicht > 100%)
- [ ] Abhängigkeiten noch relevant?
- [ ] Zeitplan noch realistisch?
- [ ] Test-Ergebnisse dokumentiert?
- [ ] Master-Action-Items konsistent?

---

## 📋 FÜLLANLEITUNG #3: DASHBOARD TESTING

### Wann wird gefüllt?

**Phase 2 (Sept-Dez 2026):**
- Monatlich: Jeder Dashboard testen
- Ergebnisse dokumentieren in dashboard-definitions.md

**Phase 3 (Jan 2027+):**
- Wöchentlich: Dashboards auf Genauigkeit überprüfen
- Queries optimieren basierend auf Nutzung

### Format (in dashboard-definitions.md):

```markdown
#### Monat X (Datum 2026): Dashboard Y Testen

**Test-Ergebnis:**
✅ Query funktioniert korrekt
✅ Daten sind genau gegen [Quelle]
✅ Performance OK (< 2 Sekunden)

**Validierung:**
- [ ] Anzahl-Berechnung korrekt? (z.B. 3 AUSSTEHENDE Entscheidungen)
- [ ] Prozent-Berechnung korrekt? (z.B. 60% Complete)
- [ ] Farben/Icons korrekt? (🔴🟡🟢 Status)

**Optimierungen erkannt:**
- [Problem 1]: Lösung: [Anpassung]
- [Problem 2]: Lösung: [Anpassung]

**Nächste Schritte:**
- [ ] Query anpassen wenn Fehler gefunden
- [ ] Nächsten Monat wieder testen
```

### Checkliste (monatlich):

- [ ] Dashboard 1 (Projekt-Status) getestet?
- [ ] Dashboard 2 (Entscheidungs-Verfolgung) getestet?
- [ ] Dashboard 3 (Automations-Status) getestet?
- [ ] Daten-Genauigkeit validiert?
- [ ] Performance OK?
- [ ] Ergebnisse dokumentiert?

---

## 📋 FÜLLANLEITUNG #4: MONATLICHE ÜBERPRÜFUNGEN

### Wann wird gefüllt?
- Jeden **1. Montag des Monats**
- Überprüfungs-Sitzung: 30 Minuten mit Mark

### Format (neue Datei pro Monat):

**Dateiname:** `wiki/meta/reviews/MONAT-JAHR-ueberpruefung.md`

**Beispiel:** `wiki/meta/reviews/SEPTEMBER-2026-ueberpruefung.md`

```markdown
---
type: meta
title: Monatliche Überprüfung — September 2026
status: active
created: 2026-09-01
tags:
  - ueberpruefung
  - monatlich
  - september-2026
---

# Monatliche Überprüfung — September 2026

**Überprüfungs-Datum:** 1. Sept 2026
**Betrachteter Zeitraum:** August 2026
**Überprüfer:** Claude (Dokumentation) + Mark (Input)

---

## Entscheidungs-Überprüfung

**Entscheidungen von August:**

### DEC-2026-001: GmbH-Gründung ja/nein?
- **Frage:** War die Entscheidung richtig?
- **Antwort:** "JA. GmbH ist gegründet, Kreditgesetz erfüllt."
- **Lernen:** "Schnelle Strukturentscheidung → schnellere Kreditvergabe (2 Wochen früher)"
- **Muster erkannt:** "Mark entscheidet pragmatisch, nicht perfektionistisch"
- **Implikation für Phase 3:** "Automationen sollten Optionen geben, nicht erzwingen"

### DEC-2026-002: Sparkasse Berlin?
- **Frage:** War die Entscheidung richtig?
- **Antwort:** "JA. Hr. Ullrich sehr unterstützend."
- **Lernen:** "Beziehung > Zinsen (4,5% vs. 5%)"
- **Muster erkannt:** "Mark vertraut auf persönliche Netzwerke"

### DEC-2026-003: E-Commerce Priorität?
- **Frage:** War die Entscheidung richtig? (zu früh zu beurteilen)
- **Status:** "E-Commerce Pipeline aktiv, erste Kandidaten identifiziert"
- **Lernen:** "TBD - First Deal erwartet 15. Sept"

---

## Automations-Überprüfung

**AUTO-001: Angebotsprüfung**
- Status: 🟡 IN PROGRESS (Spezifikationen fertig, Entwicklung 20% complete)
- Probleme: Keine
- Timeline: Im Plan (Testing Mitte-Ende Sept)
- Muster: "Detaillierte Spezifikationen → schneller Entwicklungs-Start"

**AUTO-002/003/004:**
- Status: 🔴 GEPLANT (noch nicht gestartet)
- Optimierung erkannt: "AUTO-001 Spezifikationen helfen, mehr Zeit für AUTO-002+ verbringen"

---

## Dashboard-Überprüfung

**Dashboard 1 (Projekt-Status):**
- ✅ Query funktioniert
- ✅ Daten genau
- ⚠️ Risk-Score Formel: Möglicherweise zu aggressiv (alle Projekte 🟡 Medium)
- Optimierung: "Risk-Score anpassen für nächsten Monat"

**Dashboard 2/3:**
- ⏳ Getestet nächsten Monat (noch nicht live)

---

## Identifizierte Muster

1. **Marks Entscheidungs-Stil:**
   - Pragmatisch (nicht perfektionistisch)
   - Schnell (< 1 Woche für wichtige Entscheidungen)
   - Vertraut auf Beziehungen/Netzwerke
   - Parallel-Mentalität (mehrere Threads gleichzeitig)

2. **Erfolgreiche Struktur-Elemente:**
   - Detaillierte Spezifikationen → schnellere Entwicklung
   - Klare Entscheidungs-Rationale → klare Umsetzung

3. **Zu verbessernde Bereiche:**
   - Risk-Score Metrik braucht Feinabstimmung
   - Automationen müssen Marks Stil unterstützen (Optionen geben, nicht erzwingen)

---

## Aktionen für Oktober

- [ ] AUTO-001 Testing (mid-Sept bis end-Sept)
- [ ] Dashboard 2 implementieren & testen (Okt)
- [ ] Risk-Score Formel anpassen (Okt 1-7)
- [ ] AUTO-002 Entwicklung starten (Okt 1)
- [ ] First E-Commerce Deal? (Okt bis 30. Sept erwartet)

---

**Überprüfung abgeschlossen:** 1. Sept 2026
**Nächste Überprüfung:** 1. Okt 2026
```

### Checkliste (vor/während/nach Überprüfung):

**VOR (1. Montag Morgen):**
- [ ] Alle Entscheidungen von letztem Monat aus decision-log auflisten
- [ ] Alle Automations-Status aus automations-registry auflisten
- [ ] Alle Dashboard-Test-Ergebnisse sammeln

**WÄHREND (30-Min Sitzung mit Mark):**
- [ ] DEC-Einträge überprüfen: "War richtig?"
- [ ] AUTO-Einträge überprüfen: "Fortschritt OK?"
- [ ] Dashboards: "Daten genau?"
- [ ] Muster erkennen: "Was sehen wir?"

**NACH:**
- [ ] Überprüfungs-Dokument schreiben
- [ ] decision-log.md mit Review-Notes aktualisieren
- [ ] automations-registry.md mit Status-Updates
- [ ] Master-Action-Items anpassen wenn nötig
- [ ] Aktionen für nächsten Monat definieren

---

## ✅ QUALITÄTSKONTROLLE: 5-PUNKT-PRÜFUNG

**BEVOR Claude eine Datei in der Meta-Ebene füllt:**

### 1. SPRACHE ✓
- [ ] Sind alle Überschriften Deutsch? (englische Fachbegriffe OK)
- [ ] Sind alle Fließtexte Deutsch?
- [ ] Sind Frontmatter-Felder korrekt?

### 2. FORMAT ✓
- [ ] Folgt die Struktur dem Template?
- [ ] Sind Wikilinks korrekt? ([[path/to/file.md|Text]])
- [ ] Sind Bullet-Points konsistent formatiert?

### 3. VOLLSTÄNDIGKEIT ✓
- [ ] Sind alle erforderlichen Felder gefüllt?
- [ ] Sind Verknüpfungen vorhanden? (zu Entscheidungen/Automationen/Tasks)
- [ ] Sind Daten-Quellen dokumentiert?

### 4. KONSISTENZ ✓
- [ ] Stimmen die Daten mit anderen Dateien überein?
- [ ] Sind Status-Icons korrekt? (🔴🟡🟢✅)
- [ ] Sind Datumsformate konsistent? (YYYY-MM-DD)

### 5. GENAUIGKEIT ✓
- [ ] Sind alle Aussagen überprüfbar?
- [ ] Stimmen Zahlen/Prozente? (Fortschritt %)
- [ ] Stimmen Deadline-Links mit Master-Action-Items?

**Wenn eine dieser Prüfungen FEHLSCHLÄGT:**
→ KORRIGIEREN bevor Speichern

---

## 🚨 HÄUFIGE FEHLER (VERMEIDEN!)

### ❌ Fehler 1: Englische Sektions-Header
```
❌ ## Purpose and Scope
✅ ## Zweck und Umfang
```

### ❌ Fehler 2: Unvollständige Wikilinks
```
❌ [[Master-Action-Items]] (falsch - zu kurz)
✅ [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]]
```

### ❌ Fehler 3: Mischung von Datumsformaten
```
❌ "21. Aug 2026" und "2026-08-21" gemischt
✅ Immer YYYY-MM-DD Format
```

### ❌ Fehler 4: Status-Icon falsch
```
❌ "Status: pending" (Text)
✅ "Status: 🔴 AUSSTEHEND" (mit Icon)
```

### ❌ Fehler 5: Aufgaben nicht mit Master-Action-Items verlinkt
```
❌ "Task 1a muss gestartet werden"
✅ "[[wiki/meta/Master-Action-Items-2026.md#task-1a|Task 1a]] muss gestartet werden"
```

---

## 📚 SPRACHREZEEPTE (Copy-Paste Template)

### Entscheidungs-Template:
```
#### **DEC-2026-XXX: [Titel]**
- **Datum:** 2026-MM-DD
- **Entscheidungsträger:** Mark Markner
- **Status:** ✅ ENTSCHIEDEN
- **Rationale:** [Min. 2-3 Sätze]
- **Entscheidung:** JA | NEIN | CONDITIONAL
- **Ergebnis:** [Konkrete Konsequenzen]
- **Master-Action-Items Impact:** 
  - [[wiki/meta/Master-Action-Items-2026.md#task-X|Task X]] → AKTIVIERT
```

### Automations-Template:
```
#### **AUTO-XXX: [Name]**
- **Phase:** 🟡 Phase 2 | Phase 3
- **Status:** 🔴 GEPLANT | 🟡 IN PROGRESS | 🟢 LIVE
- **Owner:** Claude (Entwicklung) + Mark (Genehmigung)
- **Trigger:** [Wann läuft es?]
- **Input-Schema:** {...}
- **Output-Schema:** {...}
- **Zeitplan:** Start: [Datum], Deploy: [Datum]
- **Test-Ergebnisse:** [Nach Testen]
```

### Überprüfungs-Template:
```
### [Entscheidung/Automation Name]
- **Frage:** War die Entscheidung richtig?
- **Antwort:** [JA/NEIN mit Begründung]
- **Lernen:** [Was können wir lernen?]
- **Muster:** [Welches Muster sehen wir?]
```

---

**Status:** 🟢 AKTIV (Alle Tiers)
**Eigentümer:** Claude/JARVIN (Einhaltung), Mark Markner (Überprüfung)
**Zuletzt aktualisiert:** 2026-08-17
**Häufigkeit Review:** Monatlich (mit Überprüfungs-Zyklus)
