import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/common/config/apptheme/repository/theme_respository.dart';

final themeControllerProvider = Provider((ref) {
  final themeRepository = ref.watch(themeRepositoryProvider);
  return ThemeController(themeRepository: themeRepository);
});

class ThemeController {
  final ThemeRepository themeRepository;

  ThemeController({required this.themeRepository,});

  void initTheme() {
    themeRepository.initTheme();
  }

  ThemeData getCurrentTheme() {
    return themeRepository.getCurrrentTheme();
  }

  void setTheme({
    Color? primaryColor,
    bool? isThemeLight,
  }) {
    themeRepository.setCurrentTheme(
      primaryColor: primaryColor,
      isThemeLight: isThemeLight,
    );
  }

  void resetTheme(){
    themeRepository.resetTheme();
  }
}
