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
    apiKey: 'AIzaSyBrKfobMGK8W5s6A8gPoAF6dRQo2qUn63Q',
    appId: '1:197817071778:web:af0e5fbd2471cf2f973ffb',
    messagingSenderId: '197817071778',
    projectId: 'firestore-359f1',
    authDomain: 'firestore-359f1.firebaseapp.com',
    storageBucket: 'firestore-359f1.appspot.com',
    measurementId: 'G-3KKRS9L0J6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAw54iultiHW6Vrapx_yCipU6gTL5CPSdE',
    appId: '1:197817071778:android:8bf6bdc1394a5462973ffb',
    messagingSenderId: '197817071778',
    projectId: 'firestore-359f1',
    storageBucket: 'firestore-359f1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCudl110Y9C9T0m7xrO63N9XZ6DgQKU7q4',
    appId: '1:197817071778:ios:af263208917d7b5e973ffb',
    messagingSenderId: '197817071778',
    projectId: 'firestore-359f1',
    storageBucket: 'firestore-359f1.appspot.com',
    iosBundleId: 'com.example.firestoreTuturial1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCudl110Y9C9T0m7xrO63N9XZ6DgQKU7q4',
    appId: '1:197817071778:ios:af263208917d7b5e973ffb',
    messagingSenderId: '197817071778',
    projectId: 'firestore-359f1',
    storageBucket: 'firestore-359f1.appspot.com',
    iosBundleId: 'com.example.firestoreTuturial1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBrKfobMGK8W5s6A8gPoAF6dRQo2qUn63Q',
    appId: '1:197817071778:web:59f6dbe138b87502973ffb',
    messagingSenderId: '197817071778',
    projectId: 'firestore-359f1',
    authDomain: 'firestore-359f1.firebaseapp.com',
    storageBucket: 'firestore-359f1.appspot.com',
    measurementId: 'G-RJEXP64392',
  );
}
