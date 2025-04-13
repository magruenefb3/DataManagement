# Überblick über Pentaho Data Integration (PDI)
Pentaho Data Integration (PDI) basiert auf dem ursprünglichen Open Source-Projekt "Kettle". 
Mit PDI können Business Intelligence-Lösungen umgesetzt werden.  
Insbesondere bietet sich die Verwendung von PDI zur Gestaltung von ETL-Pipelines an, die z.B. einen Data Lake oder ein Data Warehouse mit Daten beladen. 

Pentaho Data Integration besteht aus:
1) einem Designer
2) mehreren Dienstprogramme, die z.B. in der Kommandozeile ausgeführt werden können.
3) einem Server, auf dem die "Jobs" und "Transformationen", die im Designer erstellt wurden, ausgeführt und getestet werden können.

In der Community Edition von PDI ist lediglich die Perspektive "Data Integration" erhalten.

## Projekte in PDI
In PDI existieren 2 Arten von Projekten:
1) Transformations-Projekte: Für Transformation von Daten / ETL. 
2) Job-Projekte: Für regelmäßig ausgeführt Aufgaben, z.B. E-Mail-Versand oder Kopieren von Dateien.

### Transformationen
* **Transformationen** bestehen aus *Steps*, die über *Hops* miteinander verbunden sind. Sie dienen der Verarbeitung von Daten.  
* In den **Steps** werden Funktionen ausgeführt, z.B. das Lesen einer Datei, die Korrektur von Werten oder das Versenden von Mails.  
* Die **Hops** stellen die Verbindungen zwischen den Steps dar und regeln den Datenfluss. Hops können z.B. abhängig von einer Prüfung der Daten sein. 
Daten, die eine "Prüfung" nicht bestehen, werden dann z.B. an einen anderen Step weitergeleitet als Daten, die die Prüfung bestanden haben.

### Jobs
**Jobs** dienen der Steuerung des Workflows einzelner Aktivitäten in einer ETL-Pipeline. Sie können Transformationen aufrufen.
Auch bei Jobs hängt die Ansteuerung von Steps davon ab, ob eine "Evaluation" in der Aktivität erfolgreich bestanden wurde.


# Quellen
Müller, S.; Keller, C. (2015): Pentaho und Jedox, Kap. 5.1; Hanser  
Eine kurze Erklärung zu PDI finden Sie hier:  
https://www.hitachivantara.com/pentaho/pentaho-plus-platform/data-integration-analytics/pentaho-tutorials.html

