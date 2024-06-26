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
    apiKey: 'AIzaSyBI9USFfh-Rodzr4aIhAwSfi2nae8DAQsg',
    appId: '1:325405457917:web:28dc3a69dae6afb7c4ed94',
    messagingSenderId: '325405457917',
    projectId: 'heyyoumarket',
    authDomain: 'heyyoumarket.firebaseapp.com',
    storageBucket: 'heyyoumarket.appspot.com',
    measurementId: 'G-7RRS96XLQX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWSa6t7-FKDHFnUyVFQm-CgVIkCH8fECM',
    appId: '1:325405457917:android:28c80d51c1e87614c4ed94',
    messagingSenderId: '325405457917',
    projectId: 'heyyoumarket',
    storageBucket: 'heyyoumarket.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3e17nUD_6_Ubay_gMaAIkDc9CfJ-FLbc',
    appId: '1:325405457917:ios:8633d3bd2370066cc4ed94',
    messagingSenderId: '325405457917',
    projectId: 'heyyoumarket',
    storageBucket: 'heyyoumarket.appspot.com',
    iosBundleId: 'com.example.heyyoumarket',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3e17nUD_6_Ubay_gMaAIkDc9CfJ-FLbc',
    appId: '1:325405457917:ios:8633d3bd2370066cc4ed94',
    messagingSenderId: '325405457917',
    projectId: 'heyyoumarket',
    storageBucket: 'heyyoumarket.appspot.com',
    iosBundleId: 'com.example.heyyoumarket',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBI9USFfh-Rodzr4aIhAwSfi2nae8DAQsg',
    appId: '1:325405457917:web:4e3f69117876ac29c4ed94',
    messagingSenderId: '325405457917',
    projectId: 'heyyoumarket',
    authDomain: 'heyyoumarket.firebaseapp.com',
    storageBucket: 'heyyoumarket.appspot.com',
    measurementId: 'G-KSED901LWS',
  );
}
