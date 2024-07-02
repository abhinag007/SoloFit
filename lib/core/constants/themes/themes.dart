import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(backgroundColor: Colors.black),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontFamily: 'SoloLeveling'),
      headlineMedium: TextStyle(fontFamily: 'SoloLeveling'),
      headlineSmall: TextStyle(fontFamily: 'SoloLeveling'),
      bodyLarge: TextStyle(fontFamily: 'SoloLeveling'),
      bodyMedium: TextStyle(fontFamily: 'SoloLeveling'),
      bodySmall: TextStyle(fontFamily: 'SoloLeveling'),
      displayLarge: TextStyle(fontFamily: 'SoloLeveling'),
      displayMedium: TextStyle(fontFamily: 'SoloLeveling'),
      displaySmall: TextStyle(fontFamily: 'SoloLeveling'),
      labelLarge: TextStyle(fontFamily: 'SoloLeveling'),
      labelMedium: TextStyle(fontFamily: 'SoloLeveling'),
      labelSmall: TextStyle(fontFamily: 'SoloLeveling'),
    ),
    // Add more theme configurations as needed
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontFamily: 'SoloLeveling'),
      headlineMedium: TextStyle(fontFamily: 'SoloLeveling'),
      headlineSmall: TextStyle(fontFamily: 'SoloLeveling'),
      bodyLarge: TextStyle(fontFamily: 'SoloLeveling'),
      bodyMedium: TextStyle(fontFamily: 'SoloLeveling'),
      bodySmall: TextStyle(fontFamily: 'SoloLeveling'),
      displayLarge: TextStyle(fontFamily: 'SoloLeveling'),
      displayMedium: TextStyle(fontFamily: 'SoloLeveling'),
      displaySmall: TextStyle(fontFamily: 'SoloLeveling'),
      labelLarge: TextStyle(fontFamily: 'SoloLeveling'),
      labelMedium: TextStyle(fontFamily: 'SoloLeveling'),
      labelSmall: TextStyle(fontFamily: 'SoloLeveling'),
    ),  );
}

ThemeData blackTheme = ThemeData(
  brightness: Brightness.dark,
  // Customize black theme settings here
);
