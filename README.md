# <img src="https://github.com/OwnYourData/app-template-mobile/raw/master/www/dev.png" width="92"> App Template Mobil
Das App Template Mobil stellt alle notwendigen Methoden zum Zugriff auf den Datentresor bereit und bietet das Look & Feel von OwnyourData Apps optimiert für kleine Bilschirme von Smartphones.   

&nbsp;    

## Verwendung
Erstelle eine neue mobile OwnYourData App anhand folgender Schritte:   
1. App Struktur einrichten    
führe folgende Befehle auf der Kommandozeile aus:    
```bash
git clone git@github.com:OwnYourData/app-template-mobile.git
mkdir new_app-mobile
cp -R app-template-mobile/ new_app-mobile/
rm -rf app-template-mobile/
cd new_app-mobile
for i in _app* ; do mv "$i" $(echo $i | cut -c 2-) ; done
```
*Überprüfung:* öffne global.R in R-Studio und es sollte möglich sein, die Shiny Applikation zu starten.    

2. Verbindung zum Datentresor aufbauen
    erstelle das Manifest mit der Datei appManifest.txt    
    encodiere das Manifest base64 (zB https://www.base64encode.org/)    
    füge das Manifest im eigenen Datentresor hinzu
    
    *Überprüfung:* App starten und der Name des Datentresors wird in der App angezeigt
    
3. App spezifische Anpassungen durchführen    
    bearbeite die Datei `appConstants.R` und gib App-Titel und Datenstruktur an    
    
    *Überprüfung:* die gestartete App zeigt die richtigen Informationen
    
4. Visualisierungen implementieren    
    bearbeite die Datei `appMobile.R` um Benutzern die Möglichkeit zur Eingabe und Visualisierung von Daten zu geben (Layout)    
    in der Datei `appLogic.R` werden die server-seitigen Funktionalitäten dafür implementiert    
    
    *Überprüfung:* starte die App, zeige die vorhandenen Daten an
    
5. Docker Container erstellen
    bearbeite die Dateien im Unterverzeichnis `docker/` und erstelle einen Container mit dem Befehl    
    `docker build -t APP-NAME .`
    
    *Überprüfung:* starte den Container und verbinde dich im Browser    
    `docker run --name APP_NAME -d -p 3838:3838 APP-NAME
    
&nbsp;    

## Verbessere das App Template Mobil

Bitte melde Fehler oder Vorschläge im [GitHub Issue-Tracker](https://github.com/OwnYourData/app-template-mobile/issues) und halte dich dabei an die [Contributor Guidelines](https://github.com/twbs/ratchet/blob/master/CONTRIBUTING.md).

Wenn du selbst an der App mitentwickeln möchtest, folge diesen Schritten:

1. Fork it!
2. erstelle einen Feature Branch: `git checkout -b my-new-feature`
3. Commit deine Änderungen: `git commit -am 'Add some feature'`
4. Push in den Branch: `git push origin my-new-feature`
5. Sende einen Pull Request

&nbsp;    

## Lizenz

[MIT Lizenz 2017 - OwnYourData.eu](https://raw.githubusercontent.com/OwnYourData/app-template-mobile/master/LICENSE)
