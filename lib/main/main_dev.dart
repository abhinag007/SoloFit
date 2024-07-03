import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:solo_fit/core/configs/firebase_options.dart';
import 'package:solo_fit/features/onboarding/screen/onboarding.dart';

import '../core/constants/themes/themes.dart';
import '../core/utils/responsive_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      SizeConfig().init(context);
      return GetMaterialApp(
        title: 'Solo Fit',
        theme: AppThemes.darkTheme, // Initial theme
        home: const OnboardingScreen(),
      );
    });
  }
}
