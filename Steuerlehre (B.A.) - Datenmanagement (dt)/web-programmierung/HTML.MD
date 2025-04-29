# Web-Programmierug

## Links

* HTML und CSS: [SELFHTML](https://wiki.selfhtml.org/wiki/Einstieg_in_HTML/Erste_Schritte)

## Formulare erstellen

Mit folgendem Code können Sie eine Website erstellen, die ein Formular enthält.  
Das Formular sendet mit der get-Methode unverschlüsselt die Daten an die Seite empfaenger.html.

Benennen Sie das HTML-Dokument z.B. form.html

```HTML
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Einfaches Formular</title>
</head>
<body>

    <h1>Eingabeformular</h1>

    <form action="empfaenger.html" method="get">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
        </div>
        <br>
        <div>
            <label for="email">E-Mail:</label>
            <input type="email" id="email" name="email">
        </div>
        <br>
        <div>
            <label for="nachricht">Nachricht:</label>
            <textarea id="nachricht" name="nachricht"></textarea>
        </div>
        <br>
        <button type="submit">Absenden</button>
    </form>

</body>
</html>
```

Die empfaenger.html könnte dann so aussehen:

```HTML
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Empfangene Daten</title>
    <style>
        body { font-family: sans-serif; }
        h1 { color: #333; }
        .data-item { margin-bottom: 10px; padding: 10px; border: 1px solid #ddd; border-radius: 5px; }
        .label { font-weight: bold; margin-right: 10px; }
    </style>
</head>
<body>

    <h1>Empfangene Formulardaten</h1>

    <div id="datenAnzeige">
        </div>

    <script>
        function getQueryParameters() {
            const params = {};
            const search = window.location.search.substring(1); // Entfernt das führende "?"
            if (search) {
                const pairs = search.split('&');
                for (const pair of pairs) {
                    const [key, value] = pair.split('=');
                    if (key) {
                        params[decodeURIComponent(key)] = decodeURIComponent(value.replace(/\+/g, ' '));
                    }
                }
            }
            return params;
        }

        const formData = getQueryParameters();
        const datenAnzeigeDiv = document.getElementById('datenAnzeige');

        if (Object.keys(formData).length > 0) {
            for (const key in formData) {
                if (formData.hasOwnProperty(key)) {
                    const value = formData[key];
                    const dataItem = document.createElement('div');
                    dataItem.classList.add('data-item');
                    dataItem.innerHTML = `<span class="label">${key}:</span> ${value}`;
                    datenAnzeigeDiv.appendChild(dataItem);
                }
            }
        } else {
            datenAnzeigeDiv.textContent = 'Keine Daten per GET empfangen.';
        }
    </script>

</body>
</html>
```
