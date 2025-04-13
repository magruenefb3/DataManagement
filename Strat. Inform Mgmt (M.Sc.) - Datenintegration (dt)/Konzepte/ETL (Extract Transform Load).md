# ETL

1. ETL = Extract (Extraktion), Tranform (Transformation, Load (Laden / Schreiben) von Daten, i.d.R. in ein Data Warehouse, Data Mart oder einen Data Lake.
Data Marts sind ein Subset eines DWHs für eine spezielle Funktion im Unternehmen, z.B. die Marketing/Verkaufsabteilung.

2. ELT = Extract, Load, Transform - alle Rohformate werden im DWH geladen. Das DWH transformiert dann in die Zielformate. Verwendet, wenn Daten zu groß für direkte Verarbeitung.

## Extraktion in PDI

Pentaho Data Integration unterstützt ...

* eine Vielzahl von Datenquellen
* Cloud und On-site-Systeme
* Unterschiedliche File-Typen und Datenformate
