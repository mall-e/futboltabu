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
    apiKey: 'AIzaSyCfp4SGnHMTpBscwDaE5npbLlPPB4NP4oc',
    appId: '1:991615773594:web:ecddc132b42b6d24a2a823',
    messagingSenderId: '991615773594',
    projectId: 'tabufutbol',
    authDomain: 'tabufutbol.firebaseapp.com',
    storageBucket: 'tabufutbol.appspot.com',
    measurementId: 'G-HEP6XPY2PM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcqEycL5XYM1RLx9fM4k7b5tfOMYA_0hA',
    appId: '1:991615773594:android:b729245d6f967640a2a823',
    messagingSenderId: '991615773594',
    projectId: 'tabufutbol',
    storageBucket: 'tabufutbol.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9S0CdPNuBrdwI1E_1IeQmu9xXeMMaP_c',
    appId: '1:991615773594:ios:47aa9e3f58ec486ba2a823',
    messagingSenderId: '991615773594',
    projectId: 'tabufutbol',
    storageBucket: 'tabufutbol.appspot.com',
    iosClientId: '991615773594-sq89sc6l6qm9949keka37oma17s9ijk3.apps.googleusercontent.com',
    iosBundleId: 'com.example.futboltabu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB9S0CdPNuBrdwI1E_1IeQmu9xXeMMaP_c',
    appId: '1:991615773594:ios:47aa9e3f58ec486ba2a823',
    messagingSenderId: '991615773594',
    projectId: 'tabufutbol',
    storageBucket: 'tabufutbol.appspot.com',
    iosClientId: '991615773594-sq89sc6l6qm9949keka37oma17s9ijk3.apps.googleusercontent.com',
    iosBundleId: 'com.example.futboltabu',
  );
}
