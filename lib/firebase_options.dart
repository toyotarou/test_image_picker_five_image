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

      /// TODO 変更できない
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDzWjA1rgpBZo4RqS8ONEo9tgXuQ2PehLk',
    appId: '1:470663779758:web:561f04ce5c992e75bde43f',
    messagingSenderId: '470663779758',
    projectId: 'hideyuki-firebase2',
    authDomain: 'hideyuki-firebase2.firebaseapp.com',
    storageBucket: 'hideyuki-firebase2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwziwM-SSA_MakFzHrlSBgJCDaHLMlklw',
    appId: '1:470663779758:android:a194e1c29ec0c2cabde43f',
    messagingSenderId: '470663779758',
    projectId: 'hideyuki-firebase2',
    storageBucket: 'hideyuki-firebase2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUBZ_U9Pekm42Ugr9g8i-tMVcHcONxuas',
    appId: '1:470663779758:ios:27bfa64a67ed2292bde43f',
    messagingSenderId: '470663779758',
    projectId: 'hideyuki-firebase2',
    storageBucket: 'hideyuki-firebase2.appspot.com',
    iosBundleId: 'com.example.testMinimalChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAUBZ_U9Pekm42Ugr9g8i-tMVcHcONxuas',
    appId: '1:470663779758:ios:be15285261b99befbde43f',
    messagingSenderId: '470663779758',
    projectId: 'hideyuki-firebase2',
    storageBucket: 'hideyuki-firebase2.appspot.com',
    iosBundleId: 'com.example.testMinimalChatApp.RunnerTests',
  );
}
