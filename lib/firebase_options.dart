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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDTpGNQGer6nZxn9Ak4wtcHcZPI2CVP5Rs',
    appId: '1:1019732162059:web:30eecf1dd357f6aa79790e',
    messagingSenderId: '1019732162059',
    projectId: 'attendence-app-3af7c',
    authDomain: 'attendence-app-3af7c.firebaseapp.com',
    storageBucket: 'attendence-app-3af7c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXDvONkLcC0MC6GZ0t0RGAnuS8v2VS6Vw',
    appId: '1:1019732162059:android:ba0e101a2e82af7379790e',
    messagingSenderId: '1019732162059',
    projectId: 'attendence-app-3af7c',
    storageBucket: 'attendence-app-3af7c.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDTpGNQGer6nZxn9Ak4wtcHcZPI2CVP5Rs',
    appId: '1:1019732162059:web:2fd2595433c4b99379790e',
    messagingSenderId: '1019732162059',
    projectId: 'attendence-app-3af7c',
    authDomain: 'attendence-app-3af7c.firebaseapp.com',
    storageBucket: 'attendence-app-3af7c.appspot.com',
  );

}