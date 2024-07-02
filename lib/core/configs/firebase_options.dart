// // File generated by FlutterFire CLI.
// // ignore_for_file: type=lint
// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;
// import 'package:flutter_dotenv/flutter_dotenv.dart';
//
// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       throw UnsupportedError(
//         'DefaultFirebaseOptions have not been configured for web - '
//         'you can reconfigure this by running the FlutterFire CLI again.',
//       );
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for macos - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }
//
//   static FirebaseOptions android = FirebaseOptions(
//     apiKey: dotenv.env['FIREBASE_ANDROID_API_KEY']!,
//     appId: dotenv.env['FIREBASE_ANDROID_APP_ID']!,
//     messagingSenderId: dotenv.env['FIREBASE_ANDROID_MESSAGING_SENDER_ID']!,
//     projectId: dotenv.env['FIREBASE_ANDROID_PROJECT_ID']!,
//     storageBucket: dotenv.env['FIREBASE_ANDROID_STORAGE_BUCKET']!,
//   );
//
//   static FirebaseOptions ios = FirebaseOptions(
//     apiKey: dotenv.env['FIREBASE_IOS_API_KEY']!,
//     appId: dotenv.env['FIREBASE_IOS_APP_ID']!,
//     messagingSenderId: dotenv.env['FIREBASE_IOS_MESSAGING_SENDER_ID']!,
//     projectId: dotenv.env['FIREBASE_IOS_PROJECT_ID']!,
//     storageBucket: dotenv.env['FIREBASE_IOS_STORAGE_BUCKET']!,
//     iosBundleId: dotenv.env['FIREBASE_IOS_BUNDLE_ID']!,
//   );
// }
