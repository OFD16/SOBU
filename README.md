
# SOBU

This is a GDSC Solution Challenge project. Recently, natural disasters have been increasing in Turkey and in the world. Especially earthquakes. After the recent earthquakes in our country, there has been a need for people to know how safe their homes are. There is also a great need for this verification and the provision of honest data sources. Based on this area, SOBU offers a service where people can have their homes, buildings and campuses tested or verify how safe the homes they rent are.




## Demo
![Alt Text](https://github.com/OFD16/SOBU/blob/main/SOBU.gif)

## Google Services used for this app:

 - [Flutter](https://flutter.dev/)
 - [Firebase-Cloud Firestore](https://firebase.google.com/docs/firestore)
 - [Firebase-Auth](https://firebase.google.com/docs/auth)
 - [Firebase-App-Distribution](https://firebase.google.com/docs/app-distribution)
 - [Google-Cloud-Services](https://console.cloud.google.com/google/maps-apis/home?project=safe-house-debug)


## Authors

- [@OFD16](https://github.com/OFD16)
- [@betul-oz](https://github.com/betul-oz)
- [@gulbaharbozkurt](https://github.com/gulbaharbozkurt)


![Logo](https://firebasestorage.googleapis.com/v0/b/my-first-project-5d32d.appspot.com/o/1680056313349?alt=media&token=7431865d-f338-4ff0-9491-14868a94727a)


## License

[MIT](https://choosealicense.com/licenses/mit/)


## Documentation

- Dont forget to change google maps apikey when getting build
* [DEBUG] app/src/main/AndroidManifest.xml
* [RELEASE] lib/.env.dart
## Installation

* Install safe_house with flutter

```bash
 flutter create -i swift -a kotlin safe_house
```
* Get an API Key at https://cloud.google.com/maps-platform/
* Enable Maps SDK for Android, Maps SDK for iOS, and Directions API.
* Add your API Key to the specified files
`android/app/src/main/AndroidManifest.xml`
```xml
<manifest ...
  <application ...
    <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="YOUR KEY HERE"/>
```

`ios/Runner/AppDelegate.swift`

```swift
import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("YOUR KEY HERE")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
```

`lib/.env.dart`

```
const String googleAPIKey = 'YOUR KEY HERE';
```
- [Also you need to check this for configuration](https://pub.dev/packages/google_maps_flutter)

 ```bash
 flutter run --debug
```
    
