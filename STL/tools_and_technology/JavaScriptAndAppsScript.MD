# Spezielle Funktionen in Apps Script

## eingebaute Objekte

Date

## Math

Methoden: Math
Aufrunden: Math.ceil (a);
Abrunden: Math.floor (a);

Integer von 0 bis 9 generieren:
Math.floor(Math.randon()*10);

## Objekt in String konvertieren

Objekte können voneinandere entkoppelt werden. Dies geht, indem ein Objekt erst in einen String umgewandelt wird und anschließend aus dem String ein neue Objekt erzeugt wird.

```JavaScript
 const meinObjekt = {
    'vorname' : 'Heinz',
    'nachname' : 'Müller'
  }
  const meinString = JSON.stringify(meinObjekt);
  Logger.log(meinObjekt.vorname);
  Logger.log(meinString);
  const meinObjekt2 = JSON.parse(meinString);
  meinObjekt2.vorname = 'Samuel';
  Logger.log(meinObjekt2);
  Logger.log(meinObjekt1);
 ```
  