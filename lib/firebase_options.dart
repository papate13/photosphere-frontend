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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCmprTWd9wUxh51kCePFQZkifsoxabKYlo',
    appId: '1:502477609239:web:58a6b72c12eaf4cf013f52',
    messagingSenderId: '502477609239',
    projectId: 'photosphere-7172e',
    authDomain: 'photosphere-7172e.firebaseapp.com',
    storageBucket: 'photosphere-7172e.firebasestorage.app',
    measurementId: 'G-J9GE528QJB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChijpU8daVKPC3L4GXV7qRcVy5CnKkkCw',
    appId: '1:502477609239:android:2b2e2d5cebd3c033013f52',
    messagingSenderId: '502477609239',
    projectId: 'photosphere-7172e',
    storageBucket: 'photosphere-7172e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAEaC9acKavbmnRhUBHq4DAdFrfqXINZYw',
    appId: '1:502477609239:ios:0263f273d18462e5013f52',
    messagingSenderId: '502477609239',
    projectId: 'photosphere-7172e',
    storageBucket: 'photosphere-7172e.firebasestorage.app',
    iosBundleId: 'com.example.photosphereFrontend',
  );
}
