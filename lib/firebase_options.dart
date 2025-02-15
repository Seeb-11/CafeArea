// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAlWlbtGUwMTWirROogRRkEpjQaNahB32Q',
    appId: '1:664521843134:web:cc156b4c5e80aa35d159ef',
    messagingSenderId: '664521843134',
    projectId: 'flutterapp-e134f',
    authDomain: 'flutterapp-e134f.firebaseapp.com',
    storageBucket: 'flutterapp-e134f.appspot.com',
    measurementId: 'G-6QQ2BT8W7P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCv-xrSvg7StzZegL38XpUeLf8nI8Q0IKc',
    appId: '1:664521843134:android:4c7a9d14f3c2673ad159ef',
    messagingSenderId: '664521843134',
    projectId: 'flutterapp-e134f',
    storageBucket: 'flutterapp-e134f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCklWFlvVmpkkTkGaXD-LVsa-zDLYl81T8',
    appId: '1:664521843134:ios:5bf5a27b577fa6f9d159ef',
    messagingSenderId: '664521843134',
    projectId: 'flutterapp-e134f',
    storageBucket: 'flutterapp-e134f.appspot.com',
    iosBundleId: 'com.example.codeCafe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCklWFlvVmpkkTkGaXD-LVsa-zDLYl81T8',
    appId: '1:664521843134:ios:5bf5a27b577fa6f9d159ef',
    messagingSenderId: '664521843134',
    projectId: 'flutterapp-e134f',
    storageBucket: 'flutterapp-e134f.appspot.com',
    iosBundleId: 'com.example.codeCafe',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAlWlbtGUwMTWirROogRRkEpjQaNahB32Q',
    appId: '1:664521843134:web:1b94ae635a62959ad159ef',
    messagingSenderId: '664521843134',
    projectId: 'flutterapp-e134f',
    authDomain: 'flutterapp-e134f.firebaseapp.com',
    storageBucket: 'flutterapp-e134f.appspot.com',
    measurementId: 'G-2DZL2802JE',
  );
}
