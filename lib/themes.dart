import 'package:flutter/material.dart';

class CustomTheme {
  static const double cardElevation = 4;
  static const double corner = 12;
  static final Color colorBlueMain = Colors.blue[800]!;

  static const Color colorBlueFaint = Color.fromARGB(25, 21, 101, 192);
  static final RoundedRectangleBorder innerRoundedCorner =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(corner / 2));

  static final RoundedRectangleBorder roundedCorner =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(corner));

  static const Color background = Colors.white;

  static final AppBarTheme appBarTheme = AppBarTheme(
    surfaceTintColor: Colors.white,
    shadowColor: Colors.black.withOpacity(0.5),
    elevation: 0,
  );

  static final TextStyle titlelarge = TextStyle(
      color: CustomTheme.colorBlueMain,
      fontSize: 24,
      fontWeight: FontWeight.w500);
  static const TextStyle titlemedium =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500);
  static final TextStyle titlesmall = TextStyle(
      color: CustomTheme.colorBlueMain,
      fontSize: 12,
      fontWeight: FontWeight.w900);
  static final TextStyle labelmedium = TextStyle(
    color: CustomTheme.colorBlueMain,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: appBarTheme,
      textTheme: Theme.of(context).textTheme.copyWith(
          titleLarge: titlelarge,
          titleMedium: titlemedium,
          titleSmall: titlesmall,
          labelMedium: labelmedium),
      cardTheme: Theme.of(context).cardTheme.copyWith(shape: roundedCorner),
      shadowColor: Colors.grey[600],
      colorScheme: ColorScheme.fromSeed(
        seedColor: CustomTheme.colorBlueMain,
        brightness: Brightness.light,
      ),
    );
  }
}
