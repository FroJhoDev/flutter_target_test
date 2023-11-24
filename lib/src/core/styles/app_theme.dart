import 'package:flutter/material.dart';

class AppTheme {
  static ButtonStyle elevatedButtonStyle({Color color = Colors.white}) {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.green.shade300,
      padding: const EdgeInsets.symmetric(
        horizontal: 60.0,
        vertical: 12.0,
      ),
    );
  }

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: elevatedButtonStyle(),
    ),
  );
}
