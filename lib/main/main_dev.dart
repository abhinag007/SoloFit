import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:solo_fit/core/configs/firebase_options.dart';
import 'package:solo_fit/features/screen/onboarding.dart';

import '../core/constants/themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  // await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solo Fit',
      theme: AppThemes.lightTheme, // Initial theme
      home: const OnboardingScreen(),
    );
  }
}

