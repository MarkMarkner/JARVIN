---
type: meta
title: TIER 3 — Execution Plan & Ongoing Maintenance
status: active
created: 2026-08-17
updated: 2026-08-17
tags:
  - meta
  - tier-3
  - execution
  - maintenance
  - planning
address: meta-tier-3-001
---

# TIER 3 — Execution Plan & Ongoing Maintenance

**Purpose:** Define HOW to use & maintain Tier 1+2 in practice (Sept 2026+)

**Scope:** Not creating new files, but FILLING existing registries with real data

**Timeline:** Phase 2 (Sept 2026) → Phase 3 (Jan 2027+)

**Owner:** Mark (Input), Claude (Execution & Maintenance)

**Verlinkt zu:**
- [[wiki/meta/decision-log.md|Decision Log]] — Will be filled in Tier 3
- [[wiki/meta/automations-registry.md|Automations Registry]] — Will be filled in Tier 3
- [[wiki/meta/mark-os-governance.md|Mark OS Governance]] — Tier 3 follows these workflows
- [[wiki/meta/dashboard-definitions.md|Dashboard Definitions]] — Queries tested in Tier 3

---

## 🎯 TIER 3 BESTEHT AUS 4 AUFGABEN

---

## AUFGABE 1️⃣: ENTSCHEIDUNGS-LOG FÜLLEN (Phase 1 Laufend)

**Zeitrahmen:** Aug 2026 → laufend

**Was:** Mark trifft strategische Entscheidungen → Claude dokumentiert in decision-log.md

**Prozess:**

### Schritt 1: Mark trifft Entscheidung
```
Situation: "Sollten wir GmbH gründen oder Privatperson bleiben?"
Mark: "Entscheidung: JA, GmbH wird gegründet"
```

### Schritt 2: Claude dokumentiert im Entscheidungs-Log
```
DEC-2026-001: GmbH-Gründung ja/nein?
├─ Datum: 2026-08-17
├─ Entscheidungsträger: Mark Markner
├─ Status: ✅ ENTSCHIEDEN (War: 🔴 AUSSTEHEND)
├─ Entscheidung: JA — GmbH wird gegründet
├─ Ergebnis: Aufgabe 1a aktiviert, Aufgabe 1+2 deaktiviert
└─ Auswirkung: Master-Action-Items Aufgabe 1a → Fällig 2026-08-31
```

### Schritt 3: Verwandte Dateien aktualisieren
- Aktualisiere `[[wiki/meta/decisions/DEC-2026-001.md]]` mit Entscheidungs-Details
- Aktualisiere `[[wiki/meta/Master-Action-Items-2026.md]]` mit betroffenen Aufgaben
- Aktualisiere `[[wiki/hot.md]]` wenn Kontext sich änderte

### Schritt 4: Verfolgung in monatlichen Überprüfungen (Phase 2)
```
[Sept 2026 Review]:
"War die GmbH-Gründung richtig?"
→ "JA, Kreditgesetz ist jetzt erfüllt, erste Verträge möglich"
→ Learning: "Schnelle Gründung hat 2 Wochen Kredit-Verzögerung vermieden"
```

---

### Expected Entries (Timeline)

**Aug 2026:**
- DEC-2026-001: GmbH? → JA (pending)
- DEC-2026-002: Sparkasse? → JA (pending)
- DEC-2026-003: E-Commerce Priority? → JA (pending)

**Sept 2026:**
- DEC-2026-004: Sparkasse Kreditlinie final? → TBD
- DEC-2026-005: E-Commerce Deal OK? → TBD

**Oct 2026:**
- DEC-2026-006: First Fix-und-Flip Immobilie buy? → TBD
- DEC-2026-007: GbR-Gründung timing? → TBD

**Cumulative by End 2026:** ~8-12 documented decisions

---

### Wartungs-Checkliste (Wöchentlich)

- [ ] Nach Mark's strategischer Entscheidung: In decision-log.md dokumentieren
- [ ] Betroffene Entscheidungs-Dateien in decisions/ Ordner aktualisieren
- [ ] Master-Action-Items mit Aufgaben-Änderungen aktualisieren
- [ ] hot.md aktualisieren wenn Kontext sich änderte

---

## AUFGABE 2️⃣: AUTOMATIONS-REGISTRY FÜLLEN (Phase 2 → Phase 3)

**Zeitrahmen:** Sept 2026 → laufend

**Was:** AUTO-001/002/003/004 Lebenszyklus von GEPLANT → LIVE verfolgen

**Prozess:**

### Auto-001: Angebotsprüfung Fix-und-Flip (ZEITPLAN)

**Status Transitions:**

```
Aug 2026: 🔴 GEPLANT
         └─ Specs complete, ready for dev

Sept 2026: 🟡 IN PROGRESS
          ├─ Development: 50% complete
          ├─ Input/Output testing
          └─ Next: Code testing Sept 15-30

Oct 2026: 🟡 IN PROGRESS
         ├─ Test-Plan execution (Oct 1-14)
         ├─ Manual vs Auto comparison
         ├─ Mark approval (Oct 15)
         └─ DEPLOYMENT PHASE (Oct 15-31)

Oct 2026: 🟢 LIVE
         ├─ Deployed Oct 15
         ├─ Monitoring 2 weeks (Oct 15-31)
         ├─ Status check: working correctly?
         └─ ROLLOUT COMPLETE Nov 1
```

---

### Update Frequency

**When to Update automations-registry.md:**

1. **Status Change** (Geplant → In Progress → Live)
   ```
   AUTO-001: Status: 🟡 IN PROGRESS (was 🔴 GEPLANT)
   Updated: 2026-09-01
   Progress: 20% (Schritt 2 von 5)
   ```

2. **Timeline Change** (Delays, acceleration)
   ```
   AUTO-001: Timeline: DELAYED
   Original: Oct 1-31
   Revised: Oct 15-Nov 15
   Reason: Schritt 1 dauerte länger als erwartet
   ```

3. **Test Results** (Add to Monitoring section)
   ```
   Test Phase (Oct 1-14):
   ├─ Unit Tests: ✅ PASS
   ├─ Integration Tests: ✅ PASS
   ├─ Manual Comparison: 98% Match
   └─ Performance: OK (5 sec per candidate)
   ```

4. **Deployment** (Mark approval + go-live)
   ```
   Status: 🟢 LIVE
   Deployed: 2026-10-15
   Monitoring Period: Oct 15 - Oct 31
   Monitoring Results: [to be filled]
   ```

---

### Expected Timeline

```
Q4 2026:
├─ Sept: AUTO-001 Development (IN PROGRESS)
│        AUTO-002 Specs ready (GEPLANT)
├─ Oct:  AUTO-001 Testing & Deployment (LIVE by Oct 31)
│        AUTO-002 Development starts (IN PROGRESS)
└─ Nov:  AUTO-002 Monitoring & Deployment prep

Q1 2027:
├─ Jan:  AUTO-003 Development (IN PROGRESS)
│        AUTO-004 Specs ready (GEPLANT)
├─ Feb:  AUTO-003 Testing & Deployment (LIVE)
│        AUTO-004 Development starts
└─ Mar:  AUTO-004 Monitoring
```

---

### Wartungs-Checkliste (Wöchentlich)

- [ ] AUTO-001/002/003/004 aktuellen Status überprüfen
- [ ] Falls Status geändert: automations-registry.md aktualisieren
- [ ] Falls Meilenstein erreicht: Master-Action-Items aktualisieren
- [ ] Falls Probleme: hot.md aktualisieren (Blockierer)
- [ ] Monatlich: Überwachungs-Notizen hinzufügen

---

## AUFGABE 3️⃣: DASHBOARD-TESTEN & OPTIMIERUNG (Phase 2 → Phase 3)

**Zeitrahmen:** Sept 2026 → Jan 2027 (Testen), Jan 2027+ (Produktion)

**Was:** Dataview-Queries testen, Metriken optimieren, Cockpit für Phase 3 vorbereiten

**Prozess:**

### Phase 2: Testen (Sept - Dez 2026)

#### Monat 1 (Sept 2026): Dashboard 1 Testen

```
Dashboard 1: PROJECT STATUS
├─ Query: Project Status (Status, Progress %, Risk, Days to Deadline)
├─ Data Source: Master-Action-Items (task completion)
├─ Test: Run query against current projects
│  ├─ E-Commerce: 40% complete, 🟡 Medium Risk
│  ├─ Fix-und-Flip: 25% complete, 🟡 Medium Risk
│  └─ IBA: 10% complete, 🔴 High Risk
├─ Validation: Do numbers match manual review?
└─ Optimization: Adjust formulas if needed
```

**Aufgaben:**
- [ ] Dataview-Query aus dashboard-definitions.md implementieren
- [ ] Gegen echte Projektdaten testen
- [ ] Risikowert-Formel validieren (ist sie genau?)
- [ ] Ergebnisse dokumentieren: [[wiki/meta/dashboard-definitions.md]] "Testen Phase 2"

---

#### Monat 2 (Okt 2026): Dashboard 2 Testen

```
Dashboard 2: DECISION TRACKING
├─ Query: Open Decisions (count), Approved (count), Velocity
├─ Data Source: decision-log.md
├─ Test Results:
│  ├─ Open Decisions: 0 (all 3 were approved in Aug/Sept)
│  ├─ Approved: 3+ (Aug/Sept decisions)
│  └─ Velocity: 3+ decisions/month (Aug), 2+ (Sept)
├─ Validation: Does velocity match expectations?
└─ Optimization: Adjust time-window if needed
```

**Aufgaben:**
- [ ] Dataview-Query für Entscheidungen implementieren
- [ ] Zählung & Geschwindigkeits-Berechnungen testen
- [ ] Genauigkeit der Entscheidungs-Zeitleiste überprüfen
- [ ] Ergebnisse dokumentieren

---

#### Monat 3 (Nov 2026): Dashboard 3 Testen

```
Dashboard 3: AUTOMATION STATUS
├─ Query: Planned (4), In-Progress (1), Live (0)
├─ Data Source: automations-registry.md
├─ Test Results (Nov status):
│  ├─ Planned: AUTO-002, 003, 004 (3)
│  ├─ In-Progress: AUTO-001 (1)
│  └─ Live: None yet (0)
├─ Timeline Visualization: Gantt chart working?
└─ Optimization: Format, colors, layout
```

**Aufgaben:**
- [ ] Automations-Status-Query implementieren
- [ ] Zeitplan/Gantt-Visualisierung testen
- [ ] Bereitstellungs-Daten überprüfen
- [ ] Ergebnisse dokumentieren

---

#### Monat 4 (Dez 2026): Integrations-Test

```
Alle 3 Dashboards zusammen:
├─ Dashboard 1: Projekte im Plan? (Status, Risiko)
├─ Dashboard 2: Entscheidungen abgestimmt? (Offen, Genehmigt)
├─ Dashboard 3: Automationen pünktlich? (Zeitplan)
└─ Beziehungen: Stimmen sie überein? (z.B. Projektverzögerung → Risiko hoch → Entscheidungsverzögerung?)
```

**Aufgaben:**
- [ ] Alle 3 Dashboards zusammen testen
- [ ] Daten-Konsistenz über Dashboards überprüfen
- [ ] Nach fehlenden Metriken suchen
- [ ] Vorbereitung für Phase 3 Produktions-Start

---

### Phase 3: Produktion (Jan 2027+)

**Jan 2027:**
- [ ] Cockpit-Dashboard erstellen (Obsidian Canvas oder Dashboard-Plugin)
- [ ] Alle 3 Queries zu Produktion bereitstellen
- [ ] Mark auf Cockpit-Nutzung geschult
- [ ] Wöchentlicher Aktualisierungs-Zyklus startet

**Laufend:**
- [ ] Cockpit-Genauigkeit überwachen (wöchentlich)
- [ ] Queries basierend auf Nutzungsmuster optimieren
- [ ] Neue Metriken hinzufügen wenn nötig
- [ ] Monatliche Überprüfung der Dashboard-Effektivität

---

### Wartungs-Checkliste (Monatlich)

- [ ] Dashboard 1/2/3 Queries testen
- [ ] Daten-Genauigkeit validieren
- [ ] Query-Performance-Probleme überprüfen
- [ ] Test-Ergebnisse in [[wiki/meta/dashboard-definitions.md]] dokumentieren
- [ ] Metriken anpassen wenn nötig

---

## AUFGABE 4️⃣: MONATLICHER ÜBERPRÜFUNGS-ZYKLUS (Phase 2 Laufend)

**Zeitrahmen:** Sept 2026 → laufend (1. Montag des Monats)

**Was:** Frühere Entscheidungen & Automationen überprüfen, Muster identifizieren, lernen

**Prozess:**

### Überprüfungs-Zeitplan

**1. Montag jeden Monats:**
- Sept 1 (first review)
- Oct 7
- Nov 4
- Dec 2
- etc.

---

### Überprüfungs-Checkliste (Monatlich)

#### 1. Entscheidungs-Überprüfung

```
[Sept 2026 Überprüfung - Entscheidungen von August]

DEC-2026-001: GmbH-Gründung ja/nein?
├─ F: War die Entscheidung richtig?
├─ A: "JA. GmbH ist gegründet, Kreditgesetz erfüllt, erste Verträge möglich."
├─ Lernen: "Schnelle Entscheidung → schneller Kreditvergabe"
└─ Muster: "Mark entscheidet pragmatisch + schnell"

DEC-2026-002: Sparkasse Berlin?
├─ F: War die Entscheidung richtig?
├─ A: "JA. Beste verfügbare Konditionen, Hr. Ullrich unterstützt."
├─ Lernen: "Beziehung wichtiger als Zinsen (4,5% vs. 5%)"
└─ Muster: "Mark vertraut auf persönliche Beziehungen"

DEC-2026-003: E-Commerce Priorität?
├─ F: War die Entscheidung richtig? (noch zu früh zu beurteilen)
├─ A: "Zu früh, aber First Candidates identifiziert."
├─ Lernen: "E-Commerce Pipeline läuft, First Deal erwartet Sept 15"
└─ Muster: "Mark startet parallel, nicht sequenziell"
```

**Aktion:**
- [ ] decision-log.md mit Überprüfungs-Notizen aktualisieren
- [ ] Beobachtete Muster dokumentieren
- [ ] Implikationen für Phase 3 Automations-Entwurf identifizieren

---

#### 2. Automations-Überprüfung

```
[Sept 2026 Überprüfung - Automations-Status]

AUTO-001: Angebotsprüfung
├─ Status: 🟡 IN PROGRESS
├─ Fortschritt: 20% (Spezifikationen fertig, Entwicklung gestartet)
├─ Probleme: Keine noch
├─ Zeitplan: Im Plan für Okt Testen
└─ Muster: "Spezifikationen waren klar → reibungslose Entwicklung"

[Muster-Analyse]
- AUTO-001 Spezifikationen waren detailliert → schneller Entwicklungs-Start
- Implikation: Mehr Zeit für Spezifikationen für AUTO-002/003 aufwenden
```

**Aktion:**
- [ ] automations-registry.md mit Fortschritt aktualisieren
- [ ] Master-Action-Items Deadlines anpassen wenn nötig
- [ ] AUTO-002/003/004 Spezifikationen basierend auf Erkenntnissen anpassen

---

#### 3. Dashboard-Überprüfung

```
[Okt 2026 Überprüfung - Dashboards-Status]

Dashboard 1: PROJEKTÜBERSICHT
├─ Query: Funktioniert korrekt?
├─ Daten: Genau gegen Master-Action-Items?
└─ Optimierung: Risikowert-Formel immer noch korrekt?

Dashboard 2: ENTSCHEIDUNGS-VERFOLGUNG
├─ Query: Funktioniert korrekt?
├─ Daten: Alle Entscheidungen erfasst?
└─ Muster: Geschwindigkeit = 3 Entscheidungen/Monat (gesundes Tempo?)

Dashboard 3: AUTOMATIONS-STATUS
├─ Query: Funktioniert korrekt?
├─ Zeitplan: Genaue Vorhersagen?
└─ Optimierung: Braucht Layout-Anpassungen?
```

**Aktion:**
- [ ] Dashboard-Genauigkeits-Befunde dokumentieren
- [ ] Queries anpassen wenn nötig
- [ ] Verbesserungen für nächsten Monat vorbereiten

---

#### 4. Meta-Ebene Gesundheits-Überprüfung

```
[Monatliche Wartung]

Entscheidungs-Log:
- [ ] Alle Entscheidungen dokumentiert?
- [ ] Überprüfungs-Notizen gefüllt?
- [ ] Irgendwelche Entscheidungen "stecken fest" (zu lange ausstehend)?

Automations-Registry:
- [ ] Alle Automationen verfolgt?
- [ ] Status-Updates aktuell?
- [ ] Zeitplan immer noch realistisch?

Master-Action-Items:
- [ ] Aufgaben aktualisiert?
- [ ] Neue Blockierer entstanden?
- [ ] Deadlines immer noch realistisch?

Hot Context (hot.md):
- [ ] Veraltete Threads gelöscht?
- [ ] Neue Blockaden erfasst?
- [ ] Fragen beantwortet?
```

**Aktion:**
- [ ] Veraltete Elemente bereinigen
- [ ] Status-Felder aktualisieren
- [ ] Probleme kennzeichnen

---

### Überprüfungs-Dokument-Vorlage

**Erstelle neue Datei** `[[wiki/meta/reviews/MONAT-JAHR-ueberpruefung.md]]` jeden Monat:

```
---
type: meta
title: Monatliche Überprüfung — [Monat 2026]
status: active
created: YYYY-MM-DD
tags:
  - ueberpruefung
  - monatlich
  - erkenntnisse
---

# Monatliche Überprüfung — [Monat 2026]

**Überprüfungs-Datum:** 1. Montag des Monats
**Betrachteter Zeitraum:** [Letzter Monat]
**Überprüfer:** Claude + Mark (Input)

## Entscheidungs-Überprüfung
[DEC-Einträge überprüft]

## Automations-Überprüfung
[AUTO-Einträge überprüft]

## Dashboard-Überprüfung
[Dashboard-Genauigkeits-Überprüfung]

## Identifizierte Muster
[Erkenntnisse für nächsten Monat]

## Aktionen für nächsten Monat
[TODO-Liste]
```

---

### Wartungs-Checkliste (Monatlich)

- [ ] 1. Montag: 30-Min Überprüfungs-Sitzung mit Mark vereinbaren
- [ ] Alle Entscheidungen des letzten Monats überprüfen
- [ ] Automations-Fortschritt überprüfen
- [ ] Dashboards auf Genauigkeit testen
- [ ] Ergebnisse in [[wiki/meta/reviews/]] Ordner dokumentieren
- [ ] Strategie/Muster anpassen wenn nötig

---

## 📊 TIER 3 MASTER-CHECKLISTE

### WÖCHENTLICH (Jeden Montag)

- [ ] Master-Action-Items auf Deadline/Status-Änderungen überprüfen
- [ ] hot.md mit aktuellen Blockierern/Kontext aktualisieren
- [ ] Falls Mark Entscheidung trifft: In decision-log.md dokumentieren
- [ ] Falls Automations-Fortschritt: automations-registry.md aktualisieren

### MONATLICH (1. Montag)

- [ ] Monatlicher Überprüfungs-Zyklus durchführen (Entscheidung + Automation + Dashboard)
- [ ] [[wiki/meta/reviews/MONAT-JAHR-ueberpruefung.md|Monats-Überprüfungs-Dokument]] erstellen
- [ ] decision-log.md Überprüfungs-Notizen aktualisieren
- [ ] automations-registry.md basierend auf Erkenntnissen optimieren
- [ ] Dashboard-Queries testen
- [ ] Master-Action-Items anpassen wenn Strategie sich änderte

### VIERTELJÄHRLICH (Alle 3 Monate)

- [ ] Meta-Ebene auf Redundanzen überprüfen
- [ ] archive/ Ordner überprüfen
- [ ] conventions.md auf neue Regeln überprüfen
- [ ] Nächste Quartal-Entscheidungen/Automationen planen

---

## 🎯 ERFOLGSMESSER (Tier 3 End-Ergebnis)

Am Ende von Phase 2 (Sept 2026):
- ✅ decision-log.md hat 3-5 dokumentierte Entscheidungen
- ✅ automations-registry.md verfolgt AUTO-001 Status
- ✅ Dashboards getestet & funktionieren
- ✅ Erste monatliche Überprüfung abgeschlossen

Am Ende von Phase 3 (Jan 2027):
- ✅ decision-log.md hat 8-12+ Entscheidungen
- ✅ automations-registry.md zeigt AUTO-001 LIVE + AUTO-002 im Fortschritt
- ✅ Cockpit-Dashboard live & wöchentlich von Mark benutzt
- ✅ Muster aus Entscheidungs-Historie identifiziert

Am Ende von 2027:
- ✅ Enger Rückmeldungs-Kreislauf: Entscheiden → Überprüfen → Lernen → Automatisieren
- ✅ Mark OS ist selbst-optimierend
- ✅ Meta-Ebene ist "Quelle der Wahrheit" für alle strategischen Infos

---

## 🔗 Navigation

**Tier 1+2 (Lesen/Verstehen):**
- [[wiki/meta/decision-log.md|Entscheidungs-Log]]
- [[wiki/meta/automations-registry.md|Automations-Registry]]
- [[wiki/meta/mark-os-governance.md|Mark OS Governance]]
- [[wiki/meta/dashboard-definitions.md|Dashboard-Definitionen]]

**Tier 3 (Ausführen/Wartung):**
- [[wiki/meta/Master-Action-Items-2026.md|Master-Action-Items]] — wöchentliche Aktualisierungen
- [[wiki/hot.md|Hot Context]] — aktuelle Probleme
- [[wiki/meta/reviews/|reviews/ Ordner]] — monatliche Überprüfungs-Dokumente (TBD)

**Referenz:**
- [[wiki/meta/meta-structure.md|Meta-Struktur]] — Architektur-Anleitung
- [[wiki/meta/archive/|archive/]] — alte Dateien

---

**Status:** 🟡 **BEREIT ZUR AUSFÜHRUNG** (Sept 2026)
**Eigentümer:** Mark (Entscheidungen) + Claude (Ausführung & Wartung)
**Nächster Meilenstein:** 1. Sept — Erste monatliche Überprüfung
**Zuletzt aktualisiert:** 2026-08-17
