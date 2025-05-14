# Versand von Informationen

## Gmail-Versand in Pentaho

Zum Versand von Mails mit Gmail ist es zwingend erforderlich ein **App-Passwort** zu erstellen und mittels TLS zu versenden.  
Ein Video zur Erstellung von Passwörtern ist hier zu finden: https://youtu.be/G3OBFqPGXLc?si=y8kQtfmIIRAG5OUE

Ob das App-Passwort für jeden Job neu generiert werden muss, ist unklar. Bitte ggf. melden, falls das so ist.
Die Versandeinstellungen müssen dann folgendermaßen gesetzt werden:

Eine mit Gemini generierte Lösung finden Sie im Folgenden:

Im Schritt "E-Mail versenden" (Send mail step) in Pentaho PDI:

* SMTP-Server: `smtp.gmail.com`
* SMTP-Port: `465` (für SSL) oder `587` (für TLS)
* Authentifizierung verwenden: `Ja` (muss aktiviert sein)
* Benutzername: Deine vollständige Gmail-Adresse (z.B. `deinbenutzername@gmail.com`)
* Passwort: Dein Gmail-Passwort (oder ein App-Passwort, siehe unten)
* Sichere Verbindung verwenden:
  * `SSL`: Wenn du Port 465 verwendest.
  * `TLS`: Wenn du Port 587 verwendest (wähle in PDI oft "StartTLS").

Wichtige Hinweise und zusätzliche Einstellungen auf der Gmail-Seite:

Damit Pentaho PDI E-Mails über dein Gmail-Konto versenden kann, musst du möglicherweise einige Einstellungen in deinem Google-Konto anpassen:
* "Weniger sichere App"-Zugriff: Google blockiert standardmäßig den Zugriff von "weniger sicheren Apps", um dein Konto zu schützen. Pentaho PDI wird möglicherweise als solche App eingestuft. Du musst diese Einstellung in deinem Google-Konto aktivieren.
* Gehe zu https://myaccount.google.com/lesssecureapps.
* Stelle sicher, dass der Zugriff für "Weniger sichere Apps" aktiviert ist.
Wichtiger Hinweis: Google hat angekündigt, dass diese Option schrittweise deaktiviert wird, um die Sicherheit zu erhöhen. Wenn du diese Option nicht mehr findest oder sie deaktiviert ist, musst du stattdessen App-Passwörter verwenden (siehe nächster Punkt).
* App-Passwörter: Wenn die Option "Weniger sichere Apps" deaktiviert ist oder du eine sicherere Methode bevorzugst, kannst du ein App-Passwort für Pentaho PDI erstellen.
* Stelle sicher, dass die 2-Faktor-Authentifizierung in deinem Google-Konto aktiviert ist.
Gehe zu https://myaccount.google.com/apppasswords.
Wähle im Dropdown-Menü "App auswählen" die Option "Andere (benutzerdefinierter Name)".
Gib einen Namen ein (z.B. "Pentaho PDI") und klicke auf "Generieren".
Google generiert ein 16-stelliges App-Passwort. Dieses Passwort musst du im Pentaho PDI Schritt anstelle deines normalen Gmail-Passworts verwenden.
Bewahre dieses App-Passwort sicher auf.
