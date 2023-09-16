import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';

// final themesProvider = StateNotifierProvider<ThemesProvider, ThemeMode?>((_) {
//   return ThemesProvider();
// });

// class ThemesProvider extends StateNotifier<ThemeMode?> {
//   ThemesProvider() : super(ThemeMode.system);
//   void changeTheme(bool isOn) {
//     state = isOn ? ThemeMode.dark : ThemeMode.light;
//   }
// }

final themeRepositoryProvider =
    Provider((ref) => ThemeRepository(currTheme: GetStorage("currTheme")));

class ThemeRepository {
  final GetStorage currTheme;
  // final String themeName;
  // final Color primaryColor;
  // final GetStorage currTheme;
  // final bool? isThemeLight;

  ThemeRepository({
    required this.currTheme,
  });

  initTheme() {
    // theme for custom colors
    currTheme.writeIfNull("lightThemeColor", "blue");
    currTheme.writeIfNull("darkThemeColor", "teal");
    // false = night , true = light, null = system
    currTheme.writeIfNull("isThemeLight", null);
  }

  ThemeData getCurrrentTheme() {
    initTheme();

    Color primaryColor = currTheme.read("primaryColor");
    

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        // brightness: isThemeLight ? Brightness.light : Brightness.dark,
        seedColor: primaryColor,
      ),
      useMaterial3: true,
    );
  }

  bool? isNightMode(BuildContext context){
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  ThemeMode getCurrentThemeMode(){
    bool? isThemeLight = currTheme.read("isThemeLight");
    if (isThemeLight == null) return ThemeMode.system;
    if (isThemeLight) return ThemeMode.light;
    return ThemeMode.dark;
  }

  setCurrentTheme({
    Color? primaryColor,
    bool? isThemeLight,
  }) {
    currTheme.write("primaryColor", primaryColor ?? customPrimaryBlueColor);
    currTheme.write("isThemeLight", isThemeLight ?? false);
  }

  resetTheme({
    Color? primaryColor,
    bool? isThemeLight,
  }) {
    currTheme.write("primaryColor", customPrimaryBlueColor);
    currTheme.write("isThemeLight", false);
  }
}
