# Installation Pentaho Data Integration

Die Installationsschritte sind auch unter folgendem Link zu finden: https://www.hitachivantara.com/en-us/pdf/implementation-guide/three-steps-to-install-pentaho-data-integration-ce.pdf

Zur Installation der Pentaho Data Integration Suite sind folgende Schritte notwendig:
1) Installation von Java, falls noch nicht auf dem PC installiert.
2) Installation von Pentaho



## Java-Installation prüfen
Öffnen Sie das Command-Fenster unter Windows und prüfen Sie Ihre Java-Version mit dem folgenden Befehl:

![image](https://github.com/magruenefb3/DataIntegration/assets/97667586/4f5e81ba-2b88-46c4-b1d9-5147cb2d4283)

Falls Ihre Java-Version sehr veraltet ist, laden Sie bitte eine aktuelle Version herunter und installieren Sie diese.

## Laden Sie sich die Pentaho Data Integration Community Edition herunter.
Die Pentaho-Software finden Sie unter: https://sourceforge.net/projects/pentaho/
Der Link verweist auf die Website von Hitachi.
Bitte achten Sie darauf, die Community-Edition herunterzuladen.

Nach dem Download der Zip-Datei, kopieren Sie diese bitte in einen Ordner, auf den Sie Zugriff haben.
Entzippen Sie anschließend die Datei. 

![image](https://github.com/magruenefb3/DataIntegration/assets/97667586/8fd38ecb-60f0-4241-8c57-34dd7ed5e26c)

Die grafische Benutzeroberfläche finden Sie als Windows-Batch-Datei unter dem Namen 
**spoon.exe**

Erstellen Sie sich einen Link zu dieser Datei auf Ihrem Desktop. Dazu Rechtsklick --> Verknüpfung erstellen. Die Verknüpfung auf den Desktop verschieben.
Sie können im Anschluss das Icon ändern (Rechtsklick) und z.B. das Icon aus dem Installationspfad verwenden.
Falls Spoon nicht ausgeführt wird, öffnen Sie bitte SpoonDebug, um den Fehler zu identifizieren.

Pentaho sollte nun starten und nach einem Lade-Bildschirm die Anwendung anzeigen:

![image](https://github.com/magruenefb3/DataIntegration/assets/97667586/64996838-7d38-44c9-86da-de7970c3dd8b)

## Marketplace nachinstallieren

Der Marketplace ist leider nicht mehr in der Community Edition enthalten. Er kann aber über das Hadoop-Plugin nachinstalliert werden. 
Die Installationsanweisung befindet sich hier: https://www.hitachivantara.com/en-us/pdf/implementation-guide/three-steps-to-install-pentaho-data-integration-ce.pdf
Sie müssen unbedingt das erste Paket, wie in der folgenden Abbildung dargestellt, herunter laden:   
![image](https://github.com/magruenefb3/DataIntegration/assets/97667586/fd788402-69e7-4fad-b036-83d83c5a5e63)
Dieses müssen Sie anschließend entpacken und die Inhalte aus "dataintegration" nach "dataintegration" in ihrem Installationspfad der PDI kopieren.
