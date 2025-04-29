# Formulare in Google Apps Script erstellen

Hinweis: Dieser Ratgeber wurde erstellt mit Gemini!

_Hier ist ein Beispiel, wie du in Google Sheets ein Webformular erstellen kannst, in das ein Name eingegeben wird, und dieser Name anschließend mit einer Begrüßung auf einer anderen "Seite" (innerhalb derselben Webanwendung) angezeigt wird. Wir verwenden die Methode des dynamischen Inhaltsaustauschs mit JavaScript._

## Schritt 1: Google Apps Script (Code.gs)

```JavaScript

function doGet(e) {
  return HtmlService.createHtmlOutputFromFile('Index');
}

function begruesseNutzer(name) {
  const htmlOutput = `
    <!DOCTYPE html>
    <html>
    <head>
      <title>Begrüßung</title>
      <style>
        body { font-family: sans-serif; margin: 20px; }
        h1 { color: green; }
      </style>
    </head>
    <body>
      <h1>Hallo, ${name}!</h1>
      <p><a href="#" onclick="zeigeFormular()">Zurück zum Formular</a></p>
    </body>
    </html>
  `;
  return HtmlService.createHtmlOutput(htmlOutput);
}
```

### Erläuterung (Code.gs)  

doGet(e): Diese Funktion wird aufgerufen, wenn die Webanwendung zum ersten Mal geladen wird. Sie lädt und zeigt die Index.html-Datei (unser Formular) an.
begruesseNutzer(name): Diese serverseitige Funktion wird vom Client-seitigen JavaScript aufgerufen. Sie empfängt den eingegebenen name und generiert eine einfache HTML-Seite mit einer Begrüßung. Sie enthält auch einen Link, um zurück zum Formular zu gelangen (dies wird clientseitig mit JavaScript umgesetzt).
Schritt 2: HTML-Datei für das Formular (Index.html)

Erstelle eine neue HTML-Datei in deinem Apps Script Projekt und nenne sie Index (ohne .html). Füge folgenden Code ein:

```HTML

<!DOCTYPE html>
<html>
<head>
  <title>Namens-Eingabe</title>
  <style>
    body { font-family: sans-serif; margin: 20px; }
    label { display: block; margin-bottom: 5px; }
    input[type="text"] { padding: 8px; margin-bottom: 10px; width: 200px; }
    button { padding: 10px 15px; background-color: #007bff; color: white; border: none; cursor: pointer; }
    #begruessungsBereich { margin-top: 20px; }
  </style>
</head>
<body>

  <h1>Gib deinen Namen ein</h1>
  <form id="namensFormular">
    <label for="nameInput">Name:</label>
    <input type="text" id="nameInput" name="name">
    <button type="button" onclick="zeigeBegruessung()">Absenden</button>
  </form>

  <div id="begruessungsBereich">
    </div>

  <script>
    function zeigeBegruessung() {
      const name = document.getElementById('nameInput').value;
      google.script.run.withSuccessHandler(zeigeBegruessungsseite).begruesseNutzer(name);
    }

    function zeigeBegruessungsseite(begruessungsHtml) {
      document.body.innerHTML = begruessungsHtml;
    }

    function zeigeFormular() {
      google.script.run.withSuccessHandler(ladeFormular).doGet();
    }

    function ladeFormular(formularHtml) {
      document.body.innerHTML = formularHtml;
    }
  </script>

</body>
</html>
```

### Erläuterung (Index.html)  

`Formular`: Ein einfaches Formular mit einem Textfeld (nameInput) zur Eingabe des Namens und einem Button zum Absenden.  

`zeigeBegruessung()` Funktion (Client-seitig):
Liest den Wert aus dem Eingabefeld (nameInput).
Verwendet google.script.run um die serverseitige Funktion begruesseNutzer() aufzurufen und übergibt den eingegebenen Namen.  

`withSuccessHandler(zeigeBegruessungsseite)`: Wenn die serverseitige Funktion erfolgreich abgeschlossen ist, wird die Funktion zeigeBegruessungsseite() mit dem zurückgegebenen HTML-Inhalt aufgerufen.  

`zeigeBegruessungsseite(begruessungsHtml)` Funktion (Client-seitig):
Ersetzt den gesamten Inhalt des `<body>`-Elements der aktuellen Seite durch den von der serverseitigen Funktion generierten HTML-Code (die Begrüßungsseite).  

`zeigeFormular()` Funktion (Client-seitig):
Verwendet google.script.run um die serverseitige Funktion doGet() erneut aufzurufen, um das ursprüngliche Formular zu laden.  

`withSuccessHandler(ladeFormular)`: Wenn doGet() erfolgreich ist, wird ladeFormular() aufgerufen.
ladeFormular(formularHtml) Funktion (Client-seitig):
Ersetzt den gesamten Inhalt des `<body>`-Elements durch den HTML-Code des Formulars.

## Formular-Handling in Google Sheets aufsetzen

Wie es funktioniert in Google Sheets:

Öffne dein Google Sheet.
Gehe zu "Erweiterungen" > "Apps Script".
Erstelle zwei neue Dateien:
Nenne die erste Datei Code.gs und füge den Inhalt des Code.gs oben ein.
Nenne die zweite Datei Index (ohne .html) und füge den Inhalt des Index.html oben ein.
Speichere dein Projekt.
Veröffentliche die Webanwendung:
Gehe zu "Bereitstellen" > "Als Webanwendung bereitstellen...".
Wähle unter "Wer hat Zugriff auf die App?" die Option "Jeder".
Klicke auf "Bereitstellen" und autorisiere den Zugriff, falls erforderlich.
Kopiere die generierte Webanwendungs-URL.
Wenn du nun diese Webanwendungs-URL in deinem Browser öffnest, siehst du das Formular. Gib einen Namen ein und klicke auf "Absenden". Die Seite wird dynamisch aktualisiert und zeigt die Begrüßung an. Klicke auf "Zurück zum Formular", um wieder zum Eingabefeld zu gelangen.

Dieses Beispiel demonstriert, wie du mit google.script.run zwischen verschiedenen "Zuständen" deiner Webanwendung navigieren kannst, indem du serverseitig HTML generierst und clientseitig den DOM manipulierst, anstatt separate HTML-Dateien direkt aufzurufen.
