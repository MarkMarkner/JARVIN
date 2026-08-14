---
type: meta
title: JARVEN Roadmap & To-Do List
status: active
created: 2026-08-01
updated: 2026-08-01
tags:
  - wiki
  - roadmap
  - todo
  - sessions
address: meta-roadmap-001
---

# JARVEN Roadmap & To-Do List

Strukturierte Liste aller ausstehenden Sessions, Entwicklungen und Agents für JARVEN & Mark OS.

---

## 🎯 Ausstehende Sessions (2-7)

### Session 2: Michaela Markner Interview ⏳
**Status:** Vorbereitet | **Priorität:** 🔴 Hoch  
**Dauer:** ~60-90 Min  
**Ziele:**
- [ ] Michaela-Interview durchführen (16 Fragen)
- [ ] Entity [[wiki/entities/Michaela Markner.md]] mit vollem Profil füllen
- [ ] Fix & Flip Kapital-Vertrag klären
- [ ] Holding-Partnerschaft dokumentieren
- [ ] Finanzielle Struktur finalisieren

**Abhängigkeiten:** Session 1 ✅ Complete  
**Output:** Michaela Entity complete + Vertrag-Template

---

### Session 2a: Ingenieurbüro Markner Interview ⏳
**Status:** Vorbereitet | **Priorität:** 🔴 Hoch  
**Dauer:** ~60-90 Min  
**Ziele:**
- [ ] Detailliertes Interview zur Bauleitung durchführen
- [ ] Entity [[wiki/entities/Ingenieurbüro Markner.md]] mit vollem Profil füllen
- [ ] Geschäftsmodell dokumentieren (Stundensätze, Projekte, Auslastung)
- [ ] Finanzielle Leistung erfassen (9.000€/Monat, Sparquote)
- [ ] Auftrag bis 31.08.2027 dokumentieren
- [ ] Rolle in Markner Holding klären (Einkommens-Säule)
- [ ] Zukunftsperspektive (Wechsel zu IBA oder andere Projekte?)

**Abhängigkeiten:** Session 1 ✅ Complete, Session 2 (Michaela Interview) abgeschlossen  
**Output:** Ingenieurbüro Entity complete + Geschäftsmodell dokumentiert

---

### Session 3: Fix & Flip Detail-Session ⏳
**Status:** Vorbereitet | **Priorität:** 🔴 Hoch  
**Dauer:** ~120 Min  
**Ziele:**
- [ ] Google-Drive Ordner (Fix & Flip) durchgehen
- [ ] Konkrete Immobilien-Kandidaten analysieren
- [ ] Agent 1 (Immobilienanalyse) live testen
- [ ] Masterclass-Plan integrieren
- [ ] Erste Immobilien-Bewertungen durchführen

**Abhängigkeiten:** Google-Drive Zugang erforderlich  
**Output:** Agent 1 funktionsfähig + Immobilien-Pipeline

---

### Session 4: E-Commerce & Firmenkauf ⏳
**Status:** Geplant | **Priorität:** 🟠 Mittel  
**Dauer:** ~90-120 Min  
**Ziele:**
- [ ] E-Commerce Kandidaten recherchieren (Biz-Trade, nexxt-change)
- [ ] Agent 2 (Unternehmensanalyse) live testen
- [ ] Verkäuferdarlehn-Strategie definieren
- [ ] Erste Firmenkauf-Evaluierungen durchführen
- [ ] Entity [[wiki/entities/Gelavije Markner.md]] erweitern

**Abhängigkeiten:** Session 2 abgeschlossen  
**Output:** Agent 2 funktionsfähig + Firmenkauf-Pipeline

---

### Session 5: IBA Details ⏳
**Status:** Geplant | **Priorität:** 🟠 Mittel  
**Dauer:** ~90 Min  
**Ziele:**
- [ ] Google-Drive IBA-Ordner durchgehen
- [ ] Förderantrag verstehen
- [ ] Website-Launch (30.09.2026) vorbereiten
- [ ] Entity [[wiki/entities/IBA - Initiative Bau Archiv GmbH.md]] vollständig dokumentieren
- [ ] KfW-Finanzierung klären

**Abhängigkeiten:** Google-Drive Zugang erforderlich  
**Output:** IBA Entity complete + Launch-Plan

---

### Session 6: Mark OS Foundation ⏳
**Status:** Geplant | **Priorität:** 🟠 Mittel  
**Dauer:** ~120-150 Min  
**Ziele:**
- [ ] Mark OS Architektur finalisieren
- [ ] Tägliche Workflows detaillieren (21:00-22:00 Routine)
- [ ] Agent-Integration planen
- [ ] Dashboard/Cockpit-Struktur designen
- [ ] Live-Test durchführen

**Abhängigkeiten:** Sessions 2-5 abgeschlossen  
**Output:** Mark OS Foundation ready + Live Operational

---

## 🤖 Agents (Development)

### Agent 1: Immobilienanalyse-Automation 🏗️
**Status:** ⏳ Design-Phase  
**Priorität:** 🔴 Hoch  
**Zielfelder:**
- Input: Exposé, Grundbuchauszug, Energieausweis
- Processing:
  - [ ] Kriteriencheckliste gegen Marks Fix & Flip Regeln
  - [ ] Marktvergleich automatisieren
  - [ ] Sanierungsschätzung kalkulieren
  - [ ] 3-Szenario Finanzberechnung
  - [ ] Go/No-Go Empfehlung
- Output: Strukturierter Bericht (20 Min statt 2h)

**Abhängigkeiten:** Session 3 (Immobilien-Daten)  
**Test:** Session 3 live mit echten Kandidaten  
**KPI:** < 20 Min pro Analyse, accuracy > 90%

---

### Agent 2: Unternehmensanalyse-Automation 🏢
**Status:** ⏳ Design-Phase  
**Priorität:** 🔴 Hoch  
**Zielfelder:**
- Input: Bilanzen, GuV, Verkäuferdarlehn-Anfrage
- Processing:
  - [ ] Nachhaltiger Cashflow nach Inhaberersatz
  - [ ] Verkäuferdarlehn-Logik (Rang, Sicherheit, Tilgung)
  - [ ] 3-Szenario Finanzierung
  - [ ] Warnsignale erkennen (Harte Ausschlusskriterien)
  - [ ] Verhandlungs-Roadmap
- Output: Go/No-Go + Strategie

**Abhängigkeiten:** Session 4 (Firmenkauf-Daten)  
**Test:** Session 4 live mit echten Kandidaten  
**KPI:** < 30 Min pro Analyse, Warnsignal-Erkennungsrate > 95%

---

### Agent 3: Workflow-Manager & Daily Orchestrator 📅
**Status:** ⏳ Design-Phase  
**Priorität:** 🟠 Mittel  
**Zielfelder:**
- Trigger: Täglich 21:00 Uhr (Mark OS Routine)
- Processing:
  - [ ] Alle offenen Aufgaben sammeln (aus JARVEN, Agents, Projekte)
  - [ ] Nach Priorität sortieren
  - [ ] Nächste Schritte definieren
  - [ ] Entscheidungspunkte flaggen
  - [ ] Agent-Ergebnisse integrieren
- Output: 
  - Tagesplan für morgen
  - Weekly-Übersicht
  - Entscheidungs-Queue
  - Blockers identifiziert

**Abhängigkeiten:** Sessions 2-4 (Workflows klar)  
**Test:** Session 6 live operativ  
**KPI:** < 30 Min daily sync, 100% completeness

---

## 🖥️ Mark OS Development

### Mark OS Foundation ⏳
**Status:** ⏳ Foundation Ready | **Development:** Pending  
**Priorität:** 🟠 Mittel  
**Komponenten:**
- [ ] Architektur-Design (Cockpit-Struktur)
- [ ] Daten-Layer (JARVEN Integration)
- [ ] Dashboard-Layout (7 Spielfelder)
- [ ] Agent-Interface
- [ ] Daily Sync Workflow
- [ ] Weekly Review Template

**Abhängigkeiten:** Sessions 2-6  
**Timeline:** Nach Session 6 starten  
**Ziel:** Operationales System für Mark ab 21:00-22:00 Uhr tägliche

---

### Mark OS Komponenten (Später)

#### Dashboard & Cockpit
- [ ] 7 Spielfelder visualisieren
- [ ] KPIs & Metriken
- [ ] Prioritäts-Engine
- [ ] Alerts & Reminders

#### Agent-Verwaltung
- [ ] Agent 1, 2, 3 integrieren
- [ ] Ergebnisse anzeigen
- [ ] Automation triggern
- [ ] History & Audit-Log

#### Reporting
- [ ] Weekly Summary
- [ ] Monthly Metrics
- [ ] Quarter Review
- [ ] Annual Planning

#### Gelavije OS (Zukunft)
- [ ] Separate Instance für Gelavije
- [ ] E-Commerce Dashboard
- [ ] Unabhängige Workflows
- [ ] Nach Mark OS stabil

---

## 📊 Gesamtübersicht

| Item | Status | Priorität | Session | Owner |
|------|--------|-----------|---------|-------|
| **Session 2: Michaela Interview** | ⏳ Ready | 🔴 Hoch | Session 2 | Mark + Claude |
| **Session 2a: Ingenieurbüro Interview** | ⏳ Ready | 🔴 Hoch | Session 2a | Mark + Claude |
| **Session 3: Fix & Flip Details** | ⏳ Ready | 🔴 Hoch | Session 3 | Mark + Claude |
| **Session 4: E-Commerce & Firmenkauf** | ⏳ Geplant | 🔴 Hoch | Session 4 | Mark + Claude |
| **Session 5: IBA Details** | ⏳ Geplant | 🟠 Mittel | Session 5 | Mark + Claude |
| **Session 6: Mark OS Foundation** | ⏳ Geplant | 🟠 Mittel | Session 6 | Mark + Claude |
| **Agent 1: Immobilienanalyse** | 🏗️ Design | 🔴 Hoch | Session 3-4 | Claude |
| **Agent 2: Unternehmensanalyse** | 🏗️ Design | 🔴 Hoch | Session 4-5 | Claude |
| **Agent 3: Workflow-Manager** | 🏗️ Design | 🟠 Mittel | Session 5-6 | Claude |
| **Mark OS Foundation** | 🏗️ Design | 🟠 Mittel | Session 6+ | Claude |

---

## 🔄 Abhängigkeitsbaum

```
Session 1: Mark Markner + Holding + Michaela Basis ✅ COMPLETE
    ↓
Session 2: Michaela Interview ⏳
    ├─→ Session 2a: Ingenieurbüro Interview ⏳
    │   (Parallel oder direkt nach Session 2)
    ↓
Session 3: Fix & Flip + Agent 1 ⏳
    ↓
Session 4: E-Commerce + Agent 2 ⏳
    ↓
Session 5: IBA Details + Agent 3 ⏳
    ↓
Session 6: Mark OS Foundation ⏳
    ↓
Mark OS Live → Daily 21:00-22:00 Routine
```

---

## ✅ Checkliste vor Session 2

- [ ] Michaela Kontakt + Interview-Zeitfenster vereinbart
- [ ] 16 Interview-Fragen vorbereitet ✅
- [ ] Entity Template bereit ✅
- [ ] Vertrag-Template prepared
- [ ] JARVEN Roadmap aktualisiert ✅

## ✅ Checkliste vor Session 2a (Ingenieurbüro)

- [ ] Ingenieurbüro-Interview-Fragen vorbereiten
- [ ] Entity-Shell mit Basis-Daten füllen
- [ ] Geschäftsmodell-Fragen sammeln
- [ ] Finanzielle Performance-Fragen
- [ ] Zukunfts-Pläne klären

---

**Status:** 🟢 Ready für Sessions 2-7  
**Zuletzt aktualisiert:** 2026-08-14  
**Nächster Meilenstein:** Session 2 — Michaela Interview  
**Dann:** Session 2a — Ingenieurbüro Interview
