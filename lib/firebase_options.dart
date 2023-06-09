// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyD_wWkI5_EjpjgypvfwJB6g_Q07r8hJ7u4',
    appId: '1:437167036081:web:444d273dba5293b391b490',
    messagingSenderId: '437167036081',
    projectId: 'flutterme-e9451',
    authDomain: 'flutterme-e9451.firebaseapp.com',
    storageBucket: 'flutterme-e9451.appspot.com',
    measurementId: 'G-RWMF8B1F7N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCscYAo-g9EhsPVLW-oR7Z5ILamjwClqzQ',
    appId: '1:437167036081:android:832ed58b56ea210791b490',
    messagingSenderId: '437167036081',
    projectId: 'flutterme-e9451',
    storageBucket: 'flutterme-e9451.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1c9NpIG-z91_dHmt0DnXGIpoY7TMcEp0',
    appId: '1:437167036081:ios:d5b48629cd8020ae91b490',
    messagingSenderId: '437167036081',
    projectId: 'flutterme-e9451',
    storageBucket: 'flutterme-e9451.appspot.com',
    iosClientId: '437167036081-ukbi2209diu2f12ko8k9r1b73u3eihda.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterMe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA1c9NpIG-z91_dHmt0DnXGIpoY7TMcEp0',
    appId: '1:437167036081:ios:5ea8ccfb0e9e24dc91b490',
    messagingSenderId: '437167036081',
    projectId: 'flutterme-e9451',
    storageBucket: 'flutterme-e9451.appspot.com',
    iosClientId: '437167036081-djmkl4q8u0ejg2mftb5cb265mdgkqnfi.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterMe.RunnerTests',
  );
}
