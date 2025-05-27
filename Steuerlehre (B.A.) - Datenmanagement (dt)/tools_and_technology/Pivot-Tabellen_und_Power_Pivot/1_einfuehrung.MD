# Einführung in PowerPivot in MS-Excel

## Was ist PowerPivot?

>PowerPivot ist eine Technologie zur **Datenmodellierung**, mit der Sie Datenmodelle erstellen, Beziehungen herstellen und Berechnungen erstellen können.  
>Bei PowerPivot können Sie mit **großen Datasets** arbeiten, umfangreiche Beziehungen herstellen sowie komplexe (oder einfache) Berechnungen erstellen –  dies alles einerseits in einer hoch leistungsfähigen Umgebung und andererseits **mit der vertrauten Excel-Oberfläche**.  
> Die PowerPivot zugrunde liegende **Modellierungstechnologie ist auch in Power BI-Designer** zu finden, einem Teil des von Microsoft gebotenen Power BI-Diensts.

Quelle: [Microsoft PowerPivot - Übersicht und Schulung][MS PowerPivot - Uebersicht und Schulung]

## Wie erhalte ich PowerPivot?

* PowerPivot ist ein Excel Add-In: Suchen Sie in der Exce-Hilfe nach "Add-Ins" und aktivieren Sie das Power Pivot Add-in.
* Sie sollten dann in der Menüleiste den Eintrag Power Pivot finden. Wenn Sie diesen auswählen erhalten Sie folgende Funktionsübersicht:
![Funktionen PowerPivot][Menüeinträge PowerPivot]

## Funktionsbereiche

* **Verwalten**: Verwaltung des **Datenmodell**s sowie Berechnungen.
  * Es öffnet sich ein neues Fenster.
  * Das Datenmodell entspricht im wesentlichen einem Datenmodell einer Datenbank. Sie können analog dazu Beziehungen zwischen Tabellen einricht bzw. automatisch erstellen lassen, z.B. im Fall, dass Sie auf eine externe SQL-Datenbank zugreifen.  
* **Measures**: Nach der Erstellung des Datenmodells können Sie Measures erstellen.
  * Measures werden zur Datenanalyse verwendet. Es handelt sich um **berechnete Felder**. Ein Measure kann z.B. einen Gesamtumsatz im Verhältnis zu einer zeitlichen Dimension, z.B. Gesamtumsatz im Quartal, darstellen.  
  * Measures können **einfache Operationen** sein (Summe), **aber auch** mittels Formeln **in der Sprache DAX** erstellt werden. >> [Einführung und Funktionsübersicht zu DAX][DAX-Formelsprache - Einführung]
  * [Informationen zur Erstellung von Measures][Measures erstellen]
* **KPIs (Key Performance Indicators)** sind Leistungskennzahlen.  
  * **Basiswerte** (Base Measure) werden in KPIs mit **Zielwerte**n (Target Measure) verglichen. So kann z.B. ein Quartalsumsatz mit einem Zielumsatz verglichen werden. Desweiteren werden **Statusschwellenwerte** definiert.  
  * KPIs bauen auf Mesaures auf.  
  * [Übersicht zu KPIs](https://support.microsoft.com/de-de/office/kpis-key-performance-indicators-in-power-pivot-e653edef-8a21-40e4-9ece-83a6c8c306aa)

[MS PowerPivot - Uebersicht und Schulung]: https://support.microsoft.com/de-de/office/power-pivot-%C3%BCbersicht-und-schulung-f9001958-7901-4caa-ad80-028a6d2432ed
[Menüeinträge PowerPivot]: menueeintraege.png
[DAX-Formelsprache - Einführung]: https://learn.microsoft.com/de-de/dax/dax-overview
[Measures erstellen]: https://support.microsoft.com/de-de/office/erstellen-eines-measures-in-power-pivot-d3cc1495-b4e5-48e7-ba98-163022a71198
