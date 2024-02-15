// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBpsbfq5DhB09BDrHNuBf-ECwVQu1e2hnQ',
    appId: '1:272794406042:web:466448beae0deee16be323',
    messagingSenderId: '272794406042',
    projectId: 'first-project-ae31a',
    authDomain: 'first-project-ae31a.firebaseapp.com',
    storageBucket: 'first-project-ae31a.appspot.com',
    measurementId: 'G-CMH63PSBZE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLXXGgvKRqVsTjvlv11xvoGYaYRpYEvhY',
    appId: '1:272794406042:android:290c356dd7b154006be323',
    messagingSenderId: '272794406042',
    projectId: 'first-project-ae31a',
    storageBucket: 'first-project-ae31a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5b-Itt7EAy5fBSnLCRtMDAwK7dSIITNg',
    appId: '1:272794406042:ios:7e00cd902b02bd986be323',
    messagingSenderId: '272794406042',
    projectId: 'first-project-ae31a',
    storageBucket: 'first-project-ae31a.appspot.com',
    iosBundleId: 'com.example.flutterFirebase',
  );
}