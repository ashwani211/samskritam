import 'package:flutter/material.dart';

class ColorRepository {
  // final String themeName;
  final Color primaryColor;
  final bool? isThemeLight;

  ColorRepository({required this.primaryColor, this.isThemeLight});

  ThemeData getCurrrentTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: isThemeLight == true ? Brightness.light : Brightness.dark,
        seedColor: primaryColor,
      ),
      useMaterial3: true,
    );
  }

  setCurrentTheme() {}
}
