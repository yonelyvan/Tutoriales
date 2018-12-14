# Release android APK (ionic 3.20.0, cordova 6.3.1) 

## 1) Generate a release build for Android 
```
ionic cordova build --release android
```
## 2) Create keystore (only the first time)
```
keytool -genkey -v -keystore my-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
```
## 3) Generate apk
```
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-key.keystore android-release-unsigned.apk alias_name

zipalign -v 4 android-release-unsigned.apk appname.apk
```
