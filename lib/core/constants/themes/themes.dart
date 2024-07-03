import 'package:flutter/material.dart';
import 'package:solo_fit/core/constants/colors_constants.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(backgroundColor: Colors.black),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      headlineMedium: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      headlineSmall: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      bodyLarge: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      bodyMedium: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      bodySmall: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      displayLarge: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      displayMedium: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      displaySmall: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      labelLarge: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      labelMedium: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
      labelSmall: TextStyle(fontFamily: 'SoloLeveling', color: colorBlack),
    ),
    // Add more theme configurations as needed
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      headlineMedium: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      headlineSmall: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      bodyLarge: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      bodyMedium: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      bodySmall: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      displayLarge: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      displayMedium: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      displaySmall: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      labelLarge: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      labelMedium: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
      labelSmall: TextStyle(fontFamily: 'SoloLeveling', color: colorWhite),
    ),
  );
}

ThemeData blackTheme = ThemeData(
  brightness: Brightness.dark,
  // Customize black theme settings here
);
