# Die `QUERY`-Funktion in Google Sheets

Die `QUERY`-Funktion in Google Sheets ermöglicht es, Daten aus einem Tabellenbereich wie in einer Datenbankabfrage zu filtern, zu sortieren und zu aggregieren. Sie nutzt eine SQL-ähnliche Syntax, basierend auf der Google Visualization API Query Language.

## Syntax

`=QUERY(Daten; Abfrage; [Kopfzeilen])`


- **Daten**: Der Bereich, der die zu analysierenden Daten enthält (z. B. `A1:C100`).
- **Abfrage**: Ein Textstring, der die Abfrage in SQL-ähnlicher Syntax beschreibt (z. B. `"SELECT A, B WHERE C > 10"`).
- **Kopfzeilen** (optional): Die Anzahl der Kopfzeilen im Datenbereich (z. B. `1` für eine Kopfzeile). Standard ist 0.

## Wichtige Elemente der Abfragesprache

- **SELECT**: Wählt Spalten aus (z. B. `SELECT A, B` für Spalten A und B).
- **WHERE**: Filtert Daten basierend auf Bedingungen (z. B. `WHERE B > 100`).
- **GROUP BY**: Gruppiert Daten (z. B. `GROUP BY A`).
- **ORDER BY**: Sortiert Ergebnisse (z. B. `ORDER BY B DESC`).
- **LIMIT**: Begrenzt die Anzahl der ausgegebenen Zeilen (z. B. `LIMIT 5`).
- **Mathematische Operationen**: Aggregationen wie `SUM`, `AVG`, `COUNT`, `MIN`, `MAX`.

## Tipps

- Spalten werden durch Buchstaben (A, B, C, ...) oder `Col1`, `Col2`, ... referenziert.
- Textwerte in Bedingungen müssen in einfache Anführungszeichen gesetzt werden (z. B. `WHERE A = 'Text'`).
- Abfragen sind case-sensitive für Spaltenbuchstaben.
- Verwende `""` für leere Abfragen oder setze die Abfrage in eine Zelle, um sie dynamisch zu machen.

---

## Beispiel

### Szenario

Tabelle mit Verkaufsdaten in `A1:C10`:

| A       | B    | C      |
|---------|------|--------|
| Produkt | Menge | Preis  |
| Apfel   | 10   | 2.5    |
| Banane  | 15   | 1.8    |
| Orange  | 8    | 3.0    |
| Apfel   | 12   | 2.5    |
| Banane  | 20   | 1.8    |
| Kiwi    | 5    | 4.0    |

### Ziel

1. Alle Produkte anzeigen, deren Menge größer als 10 ist.
2. Die Spalten Produkt und Menge anzeigen.
3. Die Ergebnisse nach Menge absteigend sortieren.

### Formel

`=QUERY(A1:C10; "SELECT A, B WHERE B > 10 ORDER BY B DESC"; 1)`

### Erklärung

- **Daten**: `A1:C10` ist der Bereich mit den Daten.
- **Abfrage**:
  - `SELECT A, B`: Wählt die Spalten Produkt (A) und Menge (B).
  - `WHERE B > 10`: Filtert Zeilen, bei denen die Menge größer als 10 ist.
  - `ORDER BY B DESC`: Sortiert die Ergebnisse nach Menge (B) absteigend.
- **Kopfzeilen**: `1` gibt an, dass die erste Zeile eine Kopfzeile ist.

### Ergebnis

| Produkt | Menge |
|---------|-------|
| Banane  | 20    |
| Banane  | 15    |
| Apfel   | 12    |

---

## Beispiele mit komplexeren Funktionen

1. **Aggregation**:
   Summiere die Menge pro Produkt:

`=QUERY(A1:C10; "SELECT A, SUM(B) GROUP BY A"; 1)`

**Ergebnis**: Summierte Mengen pro Produkt (z. B. Apfel: 22, Banane: 35, ...).

2. **Filtern mit Text**:
Zeige nur Produkte, die "Apfel" heißen:

`=QUERY(A1:C10; "SELECT A, B, C WHERE A = 'Apfel'"; 1)`


3. **Top 2 Ergebnisse**:
Zeige die zwei Produkte mit dem höchsten Preis:

`=QUERY(A1:C10; "SELECT A, C ORDER BY C DESC LIMIT 2"; 1)`

---

## Häufige Fehler

- **Fehler: "Unable to parse query string"**: Syntaxfehler, z. B. fehlende Anführungszeichen oder falsche Spaltenreferenzen.
- **Falsche Ergebnisse**: Ist der Datenbereich korrekt und sind keine leeren Zeilen enthalten?
- **Spaltenreferenzen**: Verwendung von `Col1`, `Col2`, ... wenn Spaltenbuchstaben problematisch sind (z. B. bei dynamischen Bereichen).

