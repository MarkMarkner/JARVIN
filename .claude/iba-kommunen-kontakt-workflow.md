---
type: workflow
title: IBA Kommunen-Akquisition — Einheitlicher Kontakt-Workflow
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - iba
  - akquisition
  - workflow
  - kommunen
  - prozess
address: iba-workflow-001
---

# IBA Kommunen-Akquisition — Vollständiger Workflow

**Ziel:** Alle 400 Kommunen in Deutschland systematisch kontaktieren  
**Strategie:** 4-Phasen-Ansatz (Segmentierung → Recherche → Outreach → Nurturing)  
**Timeline:** Aug-Dez 2026 (Phase 0.2)  
**Owner:** Mark Markner (Strategie) + Externes Vertriebsteam (Ausführung)

---

## 🎯 STRATEGIE ÜBERBLICK

### Warum Kommunen?
- ✅ Stabile, zuverlässige Zahlungen (öffentliche Budgets)
- ✅ Gering Churn-Rate (langfristige Kunden)
- ✅ Große Datenmengen (Bauwerksdokumentation)
- ✅ Proof-of-Concept (200 Nutzer = 10-20 Kommunen benötigt)
- ✅ Referenz-Effekt (Kommunen empfehlen sich gegenseitig)

### Segmentierung (Trichter)
```
Alle 400 Kommunen Deutschland
    ↓
Top 100 Größte (Bevölkerung)
    ↓
Top 50 "Hot Prospects" (Bauverwaltung + Budget)
    ↓
Top 20 "Quick Wins" (Frühadopter-Mentalität)
    ↓
10-20 Pilot-Kunden (Verträge)
```

---

## 📋 PHASE 1: DATENBESCHAFFUNG & SEGMENTIERUNG (Woche 1-2)

### 1.1: Kommunen-Datenbank aufbauen

**Wo die Daten herkommen:**

| Quelle | Inhalt | Zugang |
|--------|--------|--------|
| **Gemeindeverzeichnis.de** | ✅ Alle Kommunen + Einwohnerzahl | Kostenlos |
| **Wikipedia** | ✅ Kommunenlisten pro Bundesland | Kostenlos |
| **Bundesagentur** | ✅ Offizielle Verwaltungsdaten | ✅ Open Data |
| **Google Maps/Web** | 🔍 Bauverwaltungs-Kontakte | Manuell |
| **LinkedIn/XING** | 👤 Entscheidungsträger identifizieren | Premium |

**Struktur der Datei:**

```csv
Rang,Name,Bundesland,Einwohnerzahl,Bauverwaltung_Kontakt,Email,Telefon,Bemerkungen,Status,Datum
1,München,Bayern,1489800,Leiter Bauverwaltung,?,?,Großstadt - viele Bauprojekte,Zu Recherchieren,2026-08-18
2,Hamburg,Hamburg,1899604,Bauleiter,?,?,Großstadt - umfangreiche Projekte,Zu Recherchieren,2026-08-18
...
```

**Aufgabe 1.1:** Liste der 400 Kommunen erstellen
- [ ] Gemeindeverzeichnis.de durchsuchen (alle Bundesländer)
- [ ] Einwohnerzahl pro Gemeinde dokumentieren
- [ ] Top 50 nach Größe identifizieren (priorisieren)
- [ ] Datei speichern: `wiki/assets/iba-kommunen-vollstaendige-liste.csv`

---

### 1.2: Top 50 / Hot Prospects identifizieren

**Kriterien für "Hot Prospect":**

| Kriterium | Punkte | Beispiel |
|-----------|--------|---------|
| **Bevölkerung > 50k** | +20 | München (1.5M) |
| **Aktive Bauverwaltung** | +15 | Große Renovierungsprogramme |
| **Digitalisierung-Initiative** | +10 | Stadt mit Smart-City-Projekten |
| **Historische Gebäude** | +10 | Altstadt mit vielen denkmalgeschützten Gebäuden |
| **Neue Infrastrukturprojekte** | +5 | Wohnungsbau, Neubaugebiete |
| **Kürzliche Kontakte zu Tech** | +5 | IT-Beschaffungen in den letzten 12M |

**Scoring-Beispiel:**

```
München: 1,5M Einwohner (+20) + Aktive Bauverwaltung (+15) 
         + Digital Initiative (+10) + Historische Gebäude (+10) 
         = 55 Punkte → RANG 1

Kleiner Landkreis: 5k EW (-5) + Keine Bauverwaltung (0) 
                  = -5 Punkte → RANG 400
```

**Aufgabe 1.2:** Top 50 priorisieren
- [ ] Scoring-System auf alle 400 anwenden
- [ ] Top 50 extrahieren & priorisieren
- [ ] Datei speichern: `wiki/assets/iba-kommunen-top-50-hot.csv`

---

## 📞 PHASE 2: KONTAKT-RECHERCHE (Woche 2-3)

### 2.1: Entscheidungsträger identifizieren

**Pro Kommune brauchst du 2-3 Kontakte:**

| Rolle | Titel | Funktion | Priorät |
|------|-------|----------|---------|
| **Hauptentscheidungsträger** | Bürgermeister / Dezernent Bauen | Budget-Genehmigung | 🔴 MUSS |
| **Fachbereichsleiter** | Leiter Bauverwaltung / Hochbau | Tägliche Nutzung | 🔴 MUSS |
| **IT-Leiter** | CIO / IT-Direktor | Technische Integration | 🟠 SOLLTE |

**Wo Kontakte finden:**

| Methode | Aufwand | Qualität | Beispiel |
|---------|---------|----------|---------|
| **Kommunale Website** | 5 min | ⭐⭐⭐ | Impressum + Org-Chart |
| **Telefonverzeichnis** | 2 min | ⭐⭐⭐ | Zentrale anrufen |
| **LinkedIn/XING** | 10 min | ⭐⭐⭐ | Mitarbeiter suchen |
| **Branchenverzeichnisse** | 15 min | ⭐⭐ | ArchitekturVerbände, Kammer |
| **Google Search** | 5 min | ⭐⭐ | "Bauverwaltung [Stadt] Kontakt" |

**Aufgabe 2.1:** Kontakte recherchieren
- [ ] Pro Top-20: Mindestens 2 Kontakte finden (Bürgermeister + Bauleiter)
- [ ] Pro Top-50: Mindestens 1 Kontakt (Bauleiter bevorzugt)
- [ ] Email + Telefon dokumentieren
- [ ] Falls nicht online: Zentrale anrufen → Weiterleitung erfragen

---

### 2.2: Kontakt-Datenbank finalisieren

**Struktur (erweitert):**

```csv
Rang,Name,Bundesland,Einwohnerzahl,Ansprechpartner_1,Titel_1,Email_1,Telefon_1,
Ansprechpartner_2,Titel_2,Email_2,Telefon_2,Website,Bemerkungen,Status,Recherche_Datum

1,München,Bayern,1489800,Max Müller,Dezernent,max.mueller@muenchen.de,+49-89-2233,
Petra Schmidt,Bauleiter,p.schmidt@muenchen.de,+49-89-2234,muenchen.de,Großstadt - Top 5,
Recherchiert,2026-08-18
```

**Aufgabe 2.2:** Datenbank komplettieren
- [ ] Alle Top-50 Kontakte in Datenbank eintragen
- [ ] Validierung: Email + Telefon überprüfen
- [ ] Finale Datei speichern: `wiki/assets/iba-kommunen-kontaktdatenbank-top50.csv`

---

## 📧 PHASE 3: OUTREACH & KONTAKTAUFNAHME (Woche 3-8)

### 3.1: Kommunikations-Strategie

**Multi-Channel Approach:**

```
WELLE 1 (Woche 1): E-Mail an Top 50
    ↓ Warten 3 Tage
WELLE 2 (Woche 2): Telefonische Nachverfolgung (positive Responses)
    ↓
WELLE 3 (Woche 3-4): Persönliche Termine mit "Hot Prospects"
    ↓
WELLE 4 (Woche 5): Massive Outreach an restliche 350 Kommunen (Email-Kampagne)
    ↓
WELLE 5 (Woche 6-8): Telefon-Follow-up + Pitch-Meetings
```

### 3.2: Email-Template (Standardized)

**Betreffzeile (A/B Test):**

```
Option A: "Digitale Gebäudeakte: Neue Lösung für [Stadt]"
Option B: "[Stadt] + Initiative Bau Archiv: Pilotprojekt Bauwerksdokumentation"
Option C: "Kostenloser Pilot: Cloud-Archiv für Ihre Bauwerksprojekte"
```

**Email-Body (Vorlage):**

```
Sehr geehrte[r] [Ansprechpartner_Name],

die Initiative Bau Archiv GmbH hat eine innovative Lösung für ein 
großes Problem in der Kommunalverwaltung entwickelt:

PROBLEM: 
Bauwerksdokumentation wird oft verloren, ist unvollständig oder 
unzuganglich. Dies kostet Kommunen Zeit, Geld und Risiken.

LÖSUNG:
Digitale Gebäudeakte (Cloud-basiert, sicher, langfristig archiviert)
- ✅ Alle Bauprojekte zentral dokumentiert
- ✅ Sofortzugriff (nicht mehr Papierkram durchsuchen)
- ✅ Automatische Archivierung (DSGVO-konform)
- ✅ Pilotphase KOSTENLOS für erste Kommunen

ANGEBOT:
[Stadt] ist eine unserer Top-Pilotgemeinden. Wir suchen 
10-20 Kommunen für eine 6-Monats-Pilotphase (KOSTENLOS).

NÄCHSTE SCHRITTE:
1. Kurzer Überblick-Termin (20 Min, Video-Call)
2. Kostenlose Testinstanz für Ihre Gemeinde
3. Nach 6 Monaten: Entscheidung für Langzeit-Lösung

KONTAKT:
👤 Mark Markner (Gründer & Geschäftsführer)
📧 [Email]
📞 [Telefon]
🌐 www.initiative-bau-archiv.de

Ich freue mich auf ein Gespräch mit Ihnen!

Beste Grüße,
Mark Markner
Initiative Bau Archiv GmbH
```

**Aufgabe 3.2:** Email-Kampagne vorbereiten
- [ ] Betreffzeile finalisieren (A/B Test-ready)
- [ ] Email-Text anpassen & übersetzen (formelles Deutsch)
- [ ] Email-Liste vorbereiten (Top 50 segmentiert)
- [ ] Email-Client konfigurieren (Tracking optional)

### 3.3: Telefonskript (Nachverfolgung)

**Nach positiver Email-Response:**

```
Hallo [Name],

vielen Dank für Ihre Rückmeldung auf unsere Email zur 
Digitalen Gebäudeakte. 

Gerne stelle ich Ihnen die Lösung in einem kurzen Überblick vor.

TERMIN-VORSCHLAG:
- 20 Minuten, Video-Call oder Telefon
- Diese Woche: [3 Optionen]
- Nächste Woche: [3 Optionen]

Passt einer dieser Termine?

Alternativ können Sie sich auch direkt auf unserer Website 
informieren: www.initiative-bau-archiv.de

Viele Grüße,
Mark
```

**Bei "Nein" / Nicht interessiert:**

```
Vielen Dank für die ehrliche Antwort. 

Könnten Sie mir kurz helfen zu verstehen, warum das für Sie 
nicht relevant ist? (Typische Gründe):
- [ ] Haben wir bereits eine Lösung
- [ ] Kein Budget für Neuprojekte  
- [ ] Falsche Abteilung/Person
- [ ] Anderer Grund: ___________

Falls sich das später ändert, können Sie mich gerne kontaktieren.

Viele Grüße,
Mark
```

---

## 📊 PHASE 4: TRACKING & MANAGEMENT (Laufend)

### 4.1: Status-Tracking pro Kommune

**Status-Kategorien:**

| Status | Bedeutung | Aktion |
|--------|-----------|--------|
| 🟡 **Zu Recherchieren** | Kontakt nicht gefunden | Weiter recherchieren |
| 🟢 **Kontakt Gefunden** | Email/Tel vorhanden | Erste Email schicken |
| 🔵 **Email Gesendet** | Warte auf Response | Follow-up nach 3-5 Tagen |
| 🟢 **Positive Response** | Interessiert | Termin vereinbaren |
| 🟠 **Im Gespräch** | Telefonat/Meeting | Next Steps definieren |
| 🔴 **Ablehnung** | Nicht interessiert | Zu Archiv |
| ✅ **Pilot-Vertrag** | Bereit zum Start | Onboarding vorbereiten |

**Tracking-Datei-Struktur:**

```
wiki/assets/iba-kommunen-tracking-live.csv

Datum_Aktualisiert,Kommunen,Status,Letzte_Aktion,Nächste_Aktion,Notizen
2026-08-20,München,Email Gesendet,Email gesendet 20.8.,Follow-up 23.8.,Sehr interessiert
2026-08-20,Hamburg,Zu Recherchieren,Kontakt gesucht,Bürgermeister anrufen,Keine Email online
2026-08-20,Berlin,Im Gespräch,Termin 25.8.,Pilotvertrag vorbereiten,Sehr positiv
```

### 4.2: Wöchentliches Reporting

**Dashboard-Metriken:**

```
WÖCHENTLICH (jeden Freitag):
- [ ] Emails gesendet diese Woche: [X]/50
- [ ] Responses bekommen: [X]%
- [ ] Positive Antworten: [X]
- [ ] Termine vereinbart: [X]
- [ ] Pilot-Verträge unterschrieben: [X]
- [ ] Gesamtprogress: [X%] fertig

ZIEL TRACKING:
- Target: 200 Nutzer (50TB) bis 31.12.2026
- Benötigt: 10-20 Pilot-Kommunen
- Bisherig: [X] Verträge unterzeichnet
- Verbleibend: [X] Verträge nötig
```

---

## 🎯 ZEITPLAN & MEILENSTEINE

| Woche | Phase | Aufgaben | Ziel |
|-------|-------|----------|------|
| **W33 (18-24.Aug)** | 1-2 | Datenlisten aufbauen, Top-50 priorisieren | 🎯 Kontaktdatenbank ready |
| **W34 (25-31.Aug)** | 2-3 | Kontakte recherchieren, Email-Kampagne starten | 🎯 100+ Emails gesendet |
| **W35 (1-7.Sept)** | 3-4 | Follow-ups, Terminabsprachen | 🎯 20+ Termine vereinbart |
| **W36-39 (8.Sept-5.Okt)** | 3-4 | Pitch-Meetings, Pilot-Verträge | 🎯 5-10 Pilot-Kunden |
| **W40-52 (6.Okt-31.Dez)** | 4-5 | Onboarding, Pilotphase, Testimonials | 🎯 10-20 Pilot-Kunden aktiv |

**KRITISCHE MEILENSTEINE:**
- [ ] 2026-08-24: Kontaktdatenbank Top-50 vollständig
- [ ] 2026-09-01: 100+ Erste Emails gesendet
- [ ] 2026-09-15: 20+ Termine vereinbart
- [ ] 2026-10-31: 50TB (200 Nutzer) erreicht ← **FÖRDER-BEWILLIGUNG HÄNGT DARAN!**

---

## 🔧 TOOLS & AUTOMATION

### Empfohlene Tools

| Tool | Funktion | Kosten | Alternative |
|------|----------|--------|-------------|
| **Mailchimp / HubSpot** | Email-Kampagnen + Tracking | $15-50/Mo | Google Sheets + Gmail |
| **Pipedrive** | Sales-Pipeline Management | $15/User/Mo | Airtable |
| **LinkedIn Sales Navigator** | Lead Research | $65/Mo | Kostenlos (manuell) |
| **Google Sheets** | Kontaktdatenbank | Kostenlos | Excel |

### Automation möglich?

**Ja! Hier automatisierbar:**
- ✅ Email-Kampagnen-Versand (Mailchimp/HubSpot)
- ✅ Auto-Response-Tracking (Mailchimp/HubSpot)
- ✅ CRM-Sync (Pipedrive ← Google Sheets)
- ✅ Kontakt-Validierung (Email-Verifikation APIs)

**Nein, manuell nötig:**
- ❌ Kontakt-Recherche (braucht Urteilskraft)
- ❌ Individuelle Ansprache (Personalisierung)
- ❌ Termin-Koordination (Flexibilität)
- ❌ Verhandlungen (menschlicher Touch)

---

## 📌 BEST PRACTICES & TIPPS

### Do's ✅

```
✅ Personalisieren Sie: "Sehr geehrte [Name]" statt "Sehr geehrte Damen"
✅ Betreffzeile relevant: Problem + Lösung
✅ Kurz & knackig: 5-7 Sätze, keine Romane
✅ CTA klar: "Termin vereinbaren?" nicht "Feedback?"
✅ Follow-up regelmäßig: Tag 1 (Email) → Tag 4 (Telefon) → Tag 8 (2. Email)
✅ Segmentieren: Große vs. kleine Kommunen unterschiedlich ansprechen
✅ Testen: A/B-Tests für Betreffzeilen & Inhalte
✅ Datenbank pflegen: Nach jedem Kontakt updaten
```

### Don'ts ❌

```
❌ Spam-Mails: "An alle Kommunen — Interessiert?" (wird gelöscht)
❌ Zu verkäuferisch: "Das Beste am Markt!" (skeptisch)
❌ Falsche Kontakte: Verwaltungsrat statt Bauleiter
❌ Unvollständige Infos: Keine Website/Referenzen erwähnen
❌ Keine Follow-ups: Ein Email reicht nicht (3-5 Touch Points)
❌ Generisch: Copy-Paste an 400 Kommunen (sehr sichtbar!)
❌ Zu oft kontaktieren: Jeden Tag ist Spam
```

### Response-Raten erwarten

```
REALISTISCHE ZAHLEN:
- Email Open Rate: 20-30% (je nach Betreffzeile)
- Click-Through Rate: 5-10% (je nach CTA)
- Positive Response: 5-15% (je nach Problem-Relevanz)
- Termin-Quote: 50-80% (bei positiver Response)
- Pilot-Conversion: 30-50% (nach Termin)

BEISPIEL (500 Emails):
500 Emails
→ 100 geöffnet (20%)
→ 50 geklickt (10% von geöffnete)
→ 25-75 Positive Responses (5-15%)
→ 12-60 Termine vereinbart (50-80%)
→ 4-30 Pilot-Kunden (30-50% der Termine)
```

---

## 🚀 AUSFÜHRUNGS-PLAN

**DIE NÄCHSTEN 3 SCHRITTE FÜR MARK:**

1. **Diese Woche (18-24.Aug):**
   - [ ] Datenbeschaffung starten (Gemeindeverzeichnis.de)
   - [ ] Top 50 identifizieren & priorisieren
   - [ ] Kontakt-Recherche für Top 20 starten

2. **Nächste Woche (25-31.Aug):**
   - [ ] Kontaktdatenbank (Top 50) komplettieren
   - [ ] Email-Kampagnen-Text finalisieren
   - [ ] Mailchimp/HubSpot Konto eröffnen (optional)
   - [ ] Erste 50 Emails schicken

3. **Folgende Woche (1-7.Sept):**
   - [ ] Follow-ups & Telefonanrufe
   - [ ] Termine vereinbaren
   - [ ] Massive Outreach an alle 400 (Welle 2)

---

## 🎁 RESSOURCEN & TEMPLATES

**Dateien in diesem Projekt:**
- `wiki/assets/iba-kommunen-vollstaendige-liste.csv` ← Alle 400
- `wiki/assets/iba-kommunen-top-50-hot.csv` ← Priorisiert
- `wiki/assets/iba-kommunen-kontaktdatenbank-top50.csv` ← Mit Kontakten
- `wiki/assets/iba-kommunen-tracking-live.csv` ← Laufendes Tracking

**Externe Quellen:**
- Gemeindeverzeichnis: https://www.gemeindeverzeichnis.de/
- Wikipedia (Kommunenliste Deutschland): https://de.wikipedia.org/wiki/Liste_der_kreisfreien_Städte_und_Landkreise_in_Deutschland
- Open Data: https://www.govdata.de/

---

**Status:** ✅ WORKFLOW DOKUMENTIERT & READY TO EXECUTE  
**Nächster Schritt:** Datenbeschaffung (Phase 1.1)  
**Verantwortlich:** Mark (Strategie) + Vertriebsteam (Ausführung)

*Letztes Update: 2026-08-18*
