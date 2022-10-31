import 'package:flutter/material.dart';

class AppTheme {
  static Color colorPrimario = Colors.indigo;
  static ThemeData themeData = ThemeData(
    primaryColor: colorPrimario,
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: colorPrimario),
    appBarTheme: AppBarTheme(backgroundColor: colorPrimario),
  );
}
