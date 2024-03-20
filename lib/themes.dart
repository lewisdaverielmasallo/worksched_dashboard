import 'package:flutter/material.dart';

class CustomTheme {
  static final Color colorBlueMain = Colors.blue[800]!;
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
      color: CustomTheme.colorBlueMain,
      fontSize: 24,
      fontWeight: FontWeight.w700);
  static const TextStyle titlemedium =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600);
  static final TextStyle titlesmall = TextStyle(
      color: CustomTheme.colorBlueMain,
      fontSize: 12,
      fontWeight: FontWeight.w900);
  static const TextStyle labelmedium =
      TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700);

  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: appBarTheme,
      textTheme: Theme.of(context).textTheme.copyWith(
          titleLarge: titlelarge,
          titleMedium: titlemedium,
          titleSmall: titlesmall,
          labelMedium: labelmedium),
      cardTheme: Theme.of(context).cardTheme.copyWith(shape: cardBorder),
      shadowColor: Colors.grey[600],
      colorScheme: ColorScheme.fromSeed(
        seedColor: CustomTheme.colorBlueMain!,
        brightness: Brightness.light,
      ),
    );
  }
}
