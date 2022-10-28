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
    apiKey: 'AIzaSyB3YL4cqx5yerUHZVru5Uyr090_nVoOFYQ',
    appId: '1:829281060488:web:db08001c4b2e19ea1b013d',
    messagingSenderId: '829281060488',
    projectId: 'pdpauth-63527',
    authDomain: 'pdpauth-63527.firebaseapp.com',
    storageBucket: 'pdpauth-63527.appspot.com',
    measurementId: 'G-ZBTFB8BFME',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBt9uewCwFVLUOptSFowUAZbUa-jlqoosU',
    appId: '1:829281060488:android:45676007051ca6631b013d',
    messagingSenderId: '829281060488',
    projectId: 'pdpauth-63527',
    storageBucket: 'pdpauth-63527.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJBSv1Hjf1AAG9Kil2dyxTvrx1KZDT7iw',
    appId: '1:829281060488:ios:b7e97700fb5cd5ad1b013d',
    messagingSenderId: '829281060488',
    projectId: 'pdpauth-63527',
    storageBucket: 'pdpauth-63527.appspot.com',
    iosClientId: '829281060488-m179g759jo3daatmfki0nnqhqth7nets.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAppExample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJBSv1Hjf1AAG9Kil2dyxTvrx1KZDT7iw',
    appId: '1:829281060488:ios:b7e97700fb5cd5ad1b013d',
    messagingSenderId: '829281060488',
    projectId: 'pdpauth-63527',
    storageBucket: 'pdpauth-63527.appspot.com',
    iosClientId: '829281060488-m179g759jo3daatmfki0nnqhqth7nets.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAppExample',
  );
}
