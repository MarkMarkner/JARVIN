---
type: meta
title: Context Usage Optimization Strategy
status: proposal
created: 2026-08-18
updated: 2026-08-18
tags:
  - context-management
  - optimization
  - harness-configuration
  - performance
address: context-strategy-001
---

# 🚀 Context Usage Optimization Strategy

**Ziel:** Context-Effizienz maximieren + Automatisierung stärken + Proaktives Monitoring

**Status:** 📋 PROPOSAL (zur Implementierung bereit)

---

## 📊 AKTUELLE SITUATION (BASELINE)

| Metrik | Wert | Bewertung |
|--------|------|-----------|
| **Context Usage** | ~161.5k tokens (~40%) | 🟢 Komfortabel |
| **Available Buffer** | ~235k tokens (~60%) | 🟢 Großer Puffer |
| **Growth Rate** | ~160-170k tokens/Session | 🟡 Linear wachsend |
| **Time to 95%** | ~2-3 Monate | ⏰ Moderate Frist |
| **Session Archive Size** | 172 KB (11 Sessions) | 🟢 Negligible |
| **Total Vault Size** | 14 MB | 🟢 Sehr klein |
| **Largest Files** | 785 lines (Session-3) | 🟠 Optimierbar |

---

## 🎯 STRATEGISCHE EMPFEHLUNGEN (PRIORITÄT)

### **LEVEL 1: SOFORT IMPLEMENTIEREN (Diese Woche)**

#### 1.1 Context-Usage Monitoring & Alerting
**Problem:** Keine Sichtbarkeit auf Context-Nutzung während Session

**Lösung:**
```
NEUEN HOOK konfigurieren: "Before every response (every 5 turns):
  - Berechne geschätzte Context-Nutzung
  - Wenn > 85%: ⚠️ Warning anzeigen
  - Wenn > 90%: 🔴 Critical Alert + Session-Archivierungs-Vorschlag
  - Wenn > 95%: 🚨 Auto-Session-Trigger
"
```

**Implementierung:**
- Datei: `.claude/settings.json` erstellen (aktuell fehlt!)
- Hook: `"context-monitoring": {"warn_at": 85, "critical_at": 90, "auto_session_at": 95}`
- Output: Inline-Alert in jeder Response

**Benefit:** 
- ✅ Frühwarnung (nicht überraschend)
- ✅ Proaktive Planung möglich
- ✅ Automatische Session-Archivierung bei Bedarf

---

#### 1.2 Smart Session Summarization
**Problem:** Jede Session lädt volle 160-170k tokens, auch wenn nur Snippets nötig

**Lösung:**
```
NEUES DOKUMENT: wiki/sessions/Session-SUMMARY-INDEX.md
├─ Kurz-Übersicht aller Sessions (1-2 Zeilen pro Session)
├─ Keywords & Themen-Tags
├─ Link zu vollständiger Session-Datei
└─ Größe: ~2-3k tokens (statt 160k)

WORKFLOW:
1. Neue Session: Automatisch 1-Zeilen Summary erstellen
2. Nutzer-Query: Zuerst SUMMARY-INDEX durchsuchen
3. Wenn Details nötig: Link zu vollständiger Session öffnen
```

**Implementierung:**
- Tool: Claude kann beim Session-Abschluss Auto-Summary schreiben
- Hook: `"session-end": "create_summary_entry()"`

**Benefit:**
- ✅ 50-80% Context-Ersparnis für Session-Suche
- ✅ Schnellere Orientierung
- ✅ Volle Sessions abrufbar, wenn nötig

---

#### 1.3 Dynamic Context Loading (Selective Import)
**Problem:** Alle Dateien werden geladen, auch irrelevante

**Lösung:**
```
NEUER MODUS: "Smart Context Loading"
├─ Standard: Nur aktiv benötigte Dateien laden
│  ├─ hot.md (immer)
│  ├─ Master-Action-Items (immer)
│  ├─ Entities der aktuellen Task (auf Bedarf)
│  └─ Decisions (auf Bedarf)
│
├─ Bei Bedarf: Explizit laden mit @filename.md
│  └─ Nutzer: "lies [[wiki/sessions/Session-3.md]]"
│  └─ System: Nur diese Datei laden (nicht alle!)
│
└─ On-Demand Archive: Historische Sessions (abrufbar, nicht preloaded)
```

**Implementierung:**
- Konfiguration: `.claude/settings.json` mit "context_loading": "smart"`
- Syntax: `@filename.md` nutzen (already supported!)

**Benefit:**
- ✅ 30-50% Context-Reduction für Standard-Sessions
- ✅ Schnelleres Laden
- ✅ Weniger "Rauschen" im Context

---

### **LEVEL 2: DIESE WOCHE/NÄCHSTE WOCHE IMPLEMENTIEREN**

#### 2.1 Context Budget & Quota Management
**Problem:** Keine Kontrolle über Context-Verbrauch pro Task

**Lösung:**
```
NEUES SYSTEM: "Context Budget Tracking"

Pro Task:
├─ Budget: X tokens (z.B. 50k für Decision-Making)
├─ Used: Y tokens (tracked)
├─ Remaining: Z tokens (Budget - Used)
└─ Alert: "Bei 80% Budget: Reminder, Task zu abschließen"

Pro Session:
├─ Start Budget: 400k
├─ Used: [live-calc]
├─ Remaining: [live-calc]
└─ Checkpoints: 50%, 75%, 90%, 95%
```

**Implementierung:**
- Tool: Bash script zur Token-Berechnung (grob: file-size / 4)
- Display: Monatlich in `hot.md` aktualisieren
- Automatisierung: Hook beim Session-Start & Session-Ende

**Benefit:**
- ✅ Bewusstsein für Ressourcennutzung
- ✅ Bessere Planung möglich
- ✅ Priorisierung von Tasks

---

#### 2.2 Intelligent Session Segmentation
**Problem:** Sessions werden zu groß (785+ lines)

**Lösung:**
```
NEUES PATTERN: "Multi-Session Topics"

Statt "Session-3-2026-08-17-Fix-und-Flip-Detail-Workflow.md" (785 lines)
├─ Session-3A-2026-08-17-Fix-Flip-Design.md (3-4 Entscheidungen)
├─ Session-3B-2026-08-17-Fix-Flip-Contracts.md (Verträge)
├─ Session-3C-2026-08-17-Fix-Flip-Workflow.md (Prozess)
└─ Session-3-INDEX.md (Links + Zusammenfassung)

Benefit:
- Sessions unter 300 lines (portabel)
- Bessere Granularität
- Parallele Sessions möglich
```

**Implementierung:**
- Guideline: "Sessions sollten 300 lines nicht überschreiten"
- Wenn länger: Automatisch in Sub-Sessions aufteilen
- Index-Datei erstellen für Überblick

**Benefit:**
- ✅ Kleinere Sessions = besseres Handling
- ✅ Paralleles Arbeiten an mehreren Topics
- ✅ Leichtere Archivierung

---

#### 2.3 Automated Archive Compression
**Problem:** Alte Sessions bleiben vollständig im Vault (172 KB heute, später 500+ KB)

**Lösung:**
```
AUTOMATED PROCESS (Hook: bei Session > 4 Wochen alt):
1. Lese Session-Datei
2. Extrahiere Kern-Erkenntnisse (20-30% Größe)
3. Erstelle "Session-[ID]-COMPRESSED.md"
4. Archiviere Original in "wiki/meta/archive/sessions/"
5. Update Session-Index mit Link zu compressed version
```

**Implementierung:**
- Trigger: Cron/Hook beim Session-Wechsel
- Script: Claude kann automatisch komprimieren
- Storage: `wiki/meta/archive/sessions/[YYYY-MM]/`

**Benefit:**
- ✅ 60-70% Speicherersparnis für alte Sessions
- ✅ Zugänglich durch Index
- ✅ Vollversion noch abrufbar (via Git)

---

### **LEVEL 3: MITTELFRISTIG IMPLEMENTIEREN (Sept-Oktober)**

#### 3.1 Context Analytics Dashboard
**Lösung:**
```
NEUES DOKUMENT: wiki/meta/context-analytics.md

Monatlich aktualisiert:
├─ Context Usage Graph (ASCII Chart)
├─ Top 10 Größte Dateien
├─ Wachstum-Trend
├─ Archivierungs-Empfehlungen
├─ Session-Density (Sessions pro Monat)
└─ Forecast: "Bei aktueller Rate: 95% at [DATE]"
```

**Benefit:**
- ✅ Visualisierte Insights
- ✅ Trend-Erkennung
- ✅ Proaktive Planung

---

#### 3.2 Context-Aware Query Optimization
**Lösung:**
```
Neue Regel beim Query-Processing:
1. Parse User-Query: "Welche Dateien werden braucht?"
2. Smart-Load: Nur diese Dateien laden
3. Fallback: Wenn Query zu breit: "Bitte präzisieren Sie"
4. Historische Queries: Cache in hot.md

Beispiel:
User: "Zeige mir die DEC-Entscheidungen"
System: "Lade nur wiki/meta/decisions/"
         (nicht alle 72 Dateien)
```

**Benefit:**
- ✅ Dynamische Context-Nutzung
- ✅ Schneller auf Queries antworten
- ✅ Intelligente Priorisierung

---

#### 3.3 Session Lifecycle Automation
**Lösung:**
```
NEUER WORKFLOW: Auto-Session Management

Session Start (Trigger: Neue Conversation):
├─ Lade hot.md + Master-Action-Items
├─ Lade nur relevante Entities (basierend auf Task)
├─ Bestelle alte Sessions nicht (abrufbar via @)

Session Checkpoint (Every 80k tokens):
├─ Reminder: "Session bei 50% Capacity"
├─ Komprimiere alte References
├─ Clean up temporäre Notes

Session End (Trigger: User oder 95%+ Usage):
├─ Erstelle Session-Zusammenfassung
├─ Aktualisiere Session-Index
├─ Archive alte Sessions
├─ Commit zu Git
├─ Starte neue Session (automatisch, user kann decline)
```

**Benefit:**
- ✅ Automatisierte Lifecycle-Verwaltung
- ✅ Keine manuellen Archivierungen nötig
- ✅ Klare Übergänge zwischen Sessions

---

## 📋 IMPLEMENTIERUNGS-ROADMAP

### **Phase 1: SOFORT (Diese Woche)**
```
□ Erstelle .claude/settings.json
□ Konfiguriere Context-Monitoring (85%/90%/95% Alerts)
□ Teste Alerts während Arbeit
□ Dokumentiere Behavior
```

**Aufwand:** ~1-2 Stunden  
**Impact:** 🟢 Sehr hoch (Sichtbarkeit)

### **Phase 2: Diese Woche (Parallel zu Phase 1)**
```
□ Erstelle wiki/sessions/Session-SUMMARY-INDEX.md (Template)
□ Schreibe Automatisierung für Summary-Erstellung
□ Teste mit nächster Session
□ Aktualisiere Alle bestehenden Sessions
```

**Aufwand:** ~2-3 Stunden  
**Impact:** 🟢 Hoch (30-50% Ersparnis)

### **Phase 3: Nächste Woche**
```
□ Implementiere Dynamic Context Loading (.claude/settings.json)
□ Teste "Selective Import" Workflow
□ Dokumentiere Best Practices (@filename.md Nutzung)
```

**Aufwand:** ~1-2 Stunden  
**Impact:** 🟡 Mittel (20-30% Ersparnis)

### **Phase 4: Sept 2026**
```
□ Automatisierte Session-Komprimierung (wenn Session > 4 Wochen)
□ Archive-Struktur aufbauen
□ Cleanup-Automation testen
```

**Aufwand:** ~4-6 Stunden  
**Impact:** 🟢 Hoch (Langfristige Skalierbarkeit)

### **Phase 5: Sept-Okt 2026**
```
□ Context Analytics Dashboard
□ Forecast-Tool für 95%-Grenze
□ Smart Query Optimization
□ Lifecycle Automation (Session Start/End)
```

**Aufwand:** ~8-12 Stunden  
**Impact:** 🟢 Sehr hoch (Volle Automatisierung)

---

## 🎯 EXPECTED OUTCOMES

### **Nach Phase 1 (Alerts)**
```
✅ Sichtbarkeit: Context-Nutzung wird angezeigt
✅ Warnung: 85%/90%/95% Alerts geben Zeit zum Reagieren
✅ Psychologischer Vorteil: Keine Überraschungen
```

### **Nach Phase 2 (Summary Index)**
```
✅ Session-Suche: 50-80% schneller
✅ Context-Ersparnis: 30-50% für Session-Lookups
✅ Bessere Orientierung: Überblick über alle Sessions
```

### **Nach Phase 3 (Smart Loading)**
```
✅ Standard-Session: -20-30% Context
✅ Query-Response: Schneller
✅ Flexibilität: "Lade nur, was nötig"
```

### **Nach Phase 4 (Auto-Compression)**
```
✅ Vault-Größe: Bleibt unter 50 MB (heute 14 MB)
✅ Git-Repo: Schlanker
✅ Abrufbarkeit: Alt-Sessions noch verfügbar
```

### **Nach Phase 5 (Full Automation)**
```
✅ ZIEL: Unbegrenztes Wachstum ohne Context-Probleme
✅ Automatische Session-Verwaltung
✅ Proaktive Planung basierend auf Forecasts
✅ Maximal flexible Nutzung
```

---

## 📊 ESTIMATED CONTEXT SAVINGS

| Phase | Measure | Estimated Savings | Cumulative |
|-------|---------|-------------------|-----------|
| **Baseline** | Alle Dateien geladen | — | — |
| **Phase 2** | Summary Index + Smart Loading | 30-50% | 30-50% |
| **Phase 3** | Selective Import | +20-30% | 50-70% |
| **Phase 4** | Auto-Compression (alt) | +15-20% | 65-85% |
| **Phase 5** | Smart Query + Lifecycle | +10-15% | 75-90% |

**Practical Impact:**
- Heute: 161.5k / 400k = 40%
- Nach Phase 5: ~40-80k / 400k = 10-20%
- **Neuer Buffer:** 300-380k tokens (statt 235k)
- **Neue Laufzeit:** ~5-7 Monate (statt 2-3)

---

## 🚀 NEXT STEPS

**Diese Woche:**
1. ✅ Approve/Feedback zu Strategy
2. ✅ Implementiere Phase 1 (Settings.json + Alerts)
3. ✅ Teste & Dokumentiere

**Dann:**
4. Phase 2-5 nach Bedarf

---

## 📌 HINWEISE

- Diese Strategie ist **NOT breaking** — alles läuft parallel
- Architektur bleibt stabil (Git, Sessions, Vault)
- Nur Optimierungen der Lade/Nutzungs-Logik
- Jede Phase ist standalone (keine Abhängigkeiten)
- ROI sehr hoch: Kleine Investition → Große Ersparnis

---

**Autor:** Claude (Claudian)  
**Für:** Mark Markner  
**Datum:** 2026-08-18  
**Status:** 📋 READY FOR APPROVAL & IMPLEMENTATION
