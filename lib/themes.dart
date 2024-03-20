import 'package:flutter/material.dart';

class CustomTheme {
  static const double cardElevation = 5;

  static const Color background = Colors.white;

  static final AppBarTheme appBarTheme = AppBarTheme(
    surfaceTintColor: Colors.white,
    shadowColor: Colors.black.withOpacity(0.5),
    elevation: 0,
  );

  static ShapeBorder cardBorder = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(24),
    ),
  );

  static final TextStyle titlelarge = TextStyle(
      color: Colors.blue[800], fontSize: 24, fontWeight: FontWeight.w500);
  static final TextStyle titlemedium = TextStyle(
      color: Colors.blue[800], fontSize: 16, fontWeight: FontWeight.w800);
  static final TextStyle titlesmall = TextStyle(
      color: Colors.blue[800], fontSize: 12, fontWeight: FontWeight.w900);

  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: appBarTheme,
      textTheme: Theme.of(context).textTheme.copyWith(
            titleLarge: titlelarge,
            titleMedium: titlemedium,
            titleSmall: titlesmall,
          ),
      cardTheme: Theme.of(context).cardTheme.copyWith(shape: cardBorder),
      shadowColor: Colors.grey[600],
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue[800]!,
        brightness: Brightness.light,
      ),
    );
  }
}
