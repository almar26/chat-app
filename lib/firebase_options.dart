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
    apiKey: 'AIzaSyB1YuSqaJZb0wfmJpsKYjRyRC4WY9KLV6M',
    appId: '1:794847827012:web:f6c1c2e78a71fa6d599811',
    messagingSenderId: '794847827012',
    projectId: 'chatapptut-502f2',
    authDomain: 'chatapptut-502f2.firebaseapp.com',
    storageBucket: 'chatapptut-502f2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCA_lPC91YaeaDMZPnBZI9l0gqVoNChf7E',
    appId: '1:794847827012:android:bdeee98c8b4d4cfd599811',
    messagingSenderId: '794847827012',
    projectId: 'chatapptut-502f2',
    storageBucket: 'chatapptut-502f2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQQsSGBqEbHF1b4SALlYSLIJn8W5h8aeY',
    appId: '1:794847827012:ios:f5c1ccb90b83eb11599811',
    messagingSenderId: '794847827012',
    projectId: 'chatapptut-502f2',
    storageBucket: 'chatapptut-502f2.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQQsSGBqEbHF1b4SALlYSLIJn8W5h8aeY',
    appId: '1:794847827012:ios:f5c1ccb90b83eb11599811',
    messagingSenderId: '794847827012',
    projectId: 'chatapptut-502f2',
    storageBucket: 'chatapptut-502f2.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB1YuSqaJZb0wfmJpsKYjRyRC4WY9KLV6M',
    appId: '1:794847827012:web:8f64a9751b8b550d599811',
    messagingSenderId: '794847827012',
    projectId: 'chatapptut-502f2',
    authDomain: 'chatapptut-502f2.firebaseapp.com',
    storageBucket: 'chatapptut-502f2.appspot.com',
  );
}