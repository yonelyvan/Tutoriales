# Release IOS (ionic 3.20.0, cordova 6.3.1) 

## 1) Generate a release build for ios 
```
ionic build ios --release
```

## 2) Abrir el archivo .xcodeproj generado en  /platforms/ios

## 3) Ejecutar los siguientes pasos:

https://stackoverflow.com/questions/25919449/how-to-generate-an-ios-ipa-file-with-ionic-framework


## Notas posibles errores:
### For Error (0xE8008016).
Go to File>>Workspace Settings and Set "Legacy Built System"
### Errores de liberación en el comando (ionic build ios --release):
```
Es mejor cambiar, la versión de cordova a una mas actual
ejemplo: si tenemos cordova 6 
npm install -g cordova@7.1 
```
