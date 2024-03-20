import 'package:flutter/material.dart';

class CustomTheme {
  static AppBarTheme appBarTheme = AppBarTheme(
    surfaceTintColor: Colors.white,
    shadowColor: Colors.black.withOpacity(0.5),
    elevation: 0,
  );

  static TextStyle titleLarge = TextStyle(
      color: Colors.blue[800], fontSize: 24, fontWeight: FontWeight.w500);
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: appBarTheme,
      textTheme: Theme.of(context).textTheme.copyWith(titleLarge: titleLarge),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue[800]!,
        brightness: Brightness.light,
      ),
    );
  }
}
