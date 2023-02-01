import 'package:flutter/material.dart';
import 'package:generic_libs/generic_libs/dev_tools/log_tools.dart';
import 'package:get/get.dart';

import '../../../generic_libs/ui_utils/theming_service/theming_service.dart';

class ThemingController extends GetxController {
  Rx<ThemeMode> currentThemeMode = ThemeMode.light.obs;

  toggleThemeMode() {
    currentThemeMode.value = ThemingService.toggleTheme();
    logSuccess("Changed Theme Mode to ${currentThemeMode.value}");
  }

  setThemeMode(ThemeMode themeMode) {
    currentThemeMode.value = ThemingService.setThemeMode(themeMode: themeMode);
    switch (themeMode) {
      case ThemeMode.system:
        logSuccess("Changed Theme Mode to System");
        break;
      case ThemeMode.light:
        logSuccess("Changed Theme Mode to Light");
        break;
      case ThemeMode.dark:
        logSuccess("Changed Theme Mode to Dark");
        break;
    }
  }
}
