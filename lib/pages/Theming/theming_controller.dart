import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/ui_services/theming_service/theming_service.dart';

class ThemingController extends GetxController {
  Rx<ThemeMode> currentThemeMode = ThemeMode.light.obs;

  toggleThemeMode() {
    currentThemeMode.value = ThemingService.toggleTheme();
  }

  setThemeMode(ThemeMode themeMode) {
    currentThemeMode.value = ThemingService.setThemeMode(themeMode: themeMode);
    switch (themeMode) {
      case ThemeMode.system:
        print("Changed Theme Mode to System");
        break;
      case ThemeMode.light:
        print("Changed Theme Mode to Light");
        break;
      case ThemeMode.dark:
        print("Changed Theme Mode to Dark");
        break;
    }
  }
}
