# Steuerlehre Termine

## **LE: 15.04.2025**: Datenmanagement und Webanwendungen

* Fallstudie **Kindergarten** - eigene Erstellung eines Datenmodells in Excel.
  * Aufteilung der "Objekte" (Kind, Eltern, ...) auf Tabs
  * Ausschluss "nicht so wichtiger" Teile aus der Fallstudie (Räume, ...)
* Daten, Informationen, Wissen, ...
  * Daten (strukturierte = Tabellen, unstrukturierte), Informationen (Interpretation durch Nutzerin / Nutzer), Wissen (Anwendung im betrieblichen Alltag zur Ausführung von Tätigkeiten)  
* Datenbanken (basierend auf Tabellenkalkulationen).
  * ANSI/SPARC-Modell  (View, konz. Ebene, log. Ebene ...)
  * Gestaltung einer Tabelle (Datentypen, Spalten, Zeilen und alternative Benennung der Elemente (Tupel, Datensatz, Domäne))
* Einführung in die Webprogrammierung (Teil 1):
  * HTML als Beispiel für nicht-tabellenartige (nicht-relationale) Datenstrukturen  --> Elemente von HTML: Tags (öffnend, schließend; html, head, body)

**Hausaufgaben:**  

1. Datenmodell für Kindergarten zuende erstellen  
2. Eine HTML-Seite erstellen in einem beliebigen Editor;   * Die Seite soll eine Überschrift erster Ordnung mit der Beschriftung "Hallo Welt" und einen Paragraphen mit einem beliebigen Text enthalten. Erstellen Sie die Seite in einem beliebigen Editor Ihrer Wahl.

## **LE: 22.04.2025**: Website-Grundlagen (Frontend) und konzeptionelle Datenmodellierung (ER-Modell)

Ausfall des WLANs!!!

* Einführung in die Webprogrammierung / HTML (Teil 2):  
  * Frontend: [HTML-Einführung auf SelfHTML, inkl. erste Schritte in CSS](https://wiki.selfhtml.org/wiki/Einstieg_in_HTML/Erste_Schritte)
  * Einführung in CSS (zur Vertiefung): Sofern zeitlich möglich: [Web Site](https://www.w3schools.com/Css/default.asp)  
JavaScript Code für das Hosting statischer Websites in Google Workspace:

```JavaScript
function doGet() {
  return HtmlService.createHtmlOutputFromFile('Index');
}
```

* Ideen zur Gestaltung von Datenbanken am Beispiel der Kindergarten-Fallstudie
  * Entity-Relationship-Modell (nach Chen)
    * Entities
    * Relationships
    * Kardinalitäten --> (1,`*`), (0,`*`), (1,1), (0,1) Kardinalitäten
  * Wo gehören die Verweise / Referenzen hin?
  * Was ist das Ziel der Datenmodellierung? Keine NULL-Werte (sinngem. leere Felder), Vermeidung redundanter Einträge

## **LE: 29.04.2025**: Datenhaltung (Backend)

* Frontend: Gestaltung von Web-Formularen als Eingabemasken für eine Anwendung
  * HTML-Formulare: [Link zu HTML-Seminar](https://www.html-seminar.de/formulare.htm)
  * Aufgabe: Erstellen Sie in HTML ein Formular, in das Sie einen Vor- und Nachnamen, eine Matrikelnummer und eine Mailadresse eingeben können.  
  * Google Forms: an ein Sheet gebundenes Formular und ungebundenes Formular
  * Aufgabe: Erstellen Sie das Formular aus der vorherigen Aufgabe mit Google Forms: [YouTube-Video](https://youtu.be/5K4le-zJhfQ?si=L_brYyiURWke0JPu)

* Backend: Apps Script (Google), JavaScript  
  
* Vorstellung des Anwendungsfalls - **Professoren-Informationssystem**  
* Link zum Spreadsheet (nicht normalisiert) [Link](https://docs.google.com/spreadsheets/d/14UXLHS_SVjxtBZFRmOzRuB5h-hTDZAMputGTWFoClPc/edit?usp=drive_link)  
  

* Für Studierende mit **wenig IT-Erfahrung (BASIC)**:  
  * Google Sheets und Apps Script: Strukturierung von Tabellen (Themen, Studierende, Termine etc.)  
  * Apps Script - Grundlagen von JavaScript und Apps Script; Lesen und Schreiben in Google Sheets
  * Einfache Funktionen in Apps Script entwickeln.

## **LE: 06.05.2025**: Interaktion zwischen Frontend und Backend  

* **BASIC (Google Sheets & Apps Script):**
  * Verwendung von HTML-Formularen, um Daten an das Google Apps Script zu senden.
  * Apps Script-Funktionen entwickeln, um Daten aus dem Formular entgegenzunehmen und in Google Sheets zu speichern.
  * Anzeigen von Daten aus Google Sheets auf einer Webseite (grundlegende Ausgabe).
* **ADVANCED (Supabase):**
  * Verwendung von JavaScript, um Daten aus dem HTML-Formular an das Backend der BaaS-Plattform zu senden.
  * Grundlagen der Interaktion mit der BaaS-Datenbank über JavaScript (z.B. `fetch` API oder spezifische Client-Bibliotheken).
  * Anzeigen von Daten aus der BaaS-Datenbank auf der Webseite (grundlegende Ausgabe).

## **LE: 13.05.2025**: Datenmodellierung für das Professoreninformationssystem und Vergabe der Präsentationsthemen

* Überblick über die Präsentationsthemen und Zulosung der Themen  
* Definition eines **Data Catalogs** für die Datenbank - Identifizierung der relevanten Daten für das System: Professoren, Studierende, Themenvorschläge, Bewerbungen, Termine.
* Erstellung eines einfachen Datenmodells: Konzeptuelle Datenmodellierung  mit Entitäten und Beziehungen
* Umsetzung des **Datenmodell**s in die Struktur der gewählten "Datenbank" (Google Sheets Tabellen oder BaaS Collections/Tabellen) und Verfeinerung des Data Catalogs.

## **LE: 20.05.2025**: Erweiterung und gemeinsame Diskussion des Datenmodells / Puffer zum Aufholen bzw. Nacharbeiten

* Datenmodell erweitern und dokumentieren:

  * Erfassung der PO,  
  * Terminplanung,  
  * Bewerbungen,  
  * Themenzulosung und Themenvorschläge,  
  * Logging von Terminen mit Studierenden,  
  * Semesterzuordnung,  
  * Anlage von Erst- und Zweitkorrektor nebst Adressen / Telefonnrn.,
  * Verrechnung von SWS für die Betreuung anhand Start- und Kolloquiumstermin der Arbeit...

## **LE: 27.05.2025**: Überarbeitung der Anwendung / Usability

* Verbesserung der Benutzerfreundlichkeit der Formulare.
* Validierung von Eingabedaten (z.B. Pflichtfelder, Formatprüfung).
  * Implementierung der Validierung im Frontend (JavaScript) oder Backend (Google Apps Script/BaaS-Funktionen).

## **LE: 03.06.2025**: Visualisierung / Filterung und Anzeige

* Möglichkeiten, Daten in der Anwendung zu filtern (z.B. Themen nach Professor, Bewerbungen nach Thema).
* Effiziente Anzeige der Daten auf der Webseite (z.B. Tabellen, Listen).
* Implementierung von Filterfunktionen und einer übersichtlichen Datenanzeige.
* **Exkurs**: Gestaltung von Visualisierungen

## **LE: 10.06.2025**: Überarbeitung

* An diesem Termin überarbeiten Sie Ihre Anwendungen gemeinsam mit dem Dozenten und den Studierenden in Ihrem Kurs.  
* Sie sollten gegenseitig auch Ihre Anwendungen testen.

## **LE: 17.06.2025**: Projekt-Vorstellung  

* Sie präsentieren kurz und informell (5 Minuten) Ihre erstellte Anwendung für das Professoreninformationssystem.  
* Wo würden Sie gerne weitermachen, was haben Sie gelernt ...?  

## **LE: 24.06.2025**: Präsentationen

## **LE: 01.07.2025**: Präsentationen
