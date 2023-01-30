import 'package:flutter/material.dart';
import 'package:get/get.dart';

///This class's responsibility is to toggle and alter the set theme mode
abstract class ThemingService {
  ///Gets the current set theme mode
  static ThemeMode get getCurrentTheme =>
      Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;

  ///This method does not require a `context` variable since
  ///using GetX package can get the current theme automatically
  ///unless you want to use it depending on the system theme, do not pass
  ///a context obj
  static ThemeMode toggleTheme({BuildContext? context}) {
    if (context != null) {
      bool isSystemDark =
          MediaQuery.of(context).platformBrightness == Brightness.dark;
      if (isSystemDark) {
        Get.changeThemeMode(ThemeMode.light);
        return ThemeMode.light;
      }
      Get.changeThemeMode(ThemeMode.dark);
      return ThemeMode.dark;
    }
    bool isDarkMode = Get.isDarkMode;
    if (isDarkMode) {
      Get.changeThemeMode(ThemeMode.light);
      return ThemeMode.light;
    }
    Get.changeThemeMode(ThemeMode.dark);
    return ThemeMode.dark;
  }

  ///Sets the custom passed ThemMode obj
  static ThemeMode setThemeMode({required ThemeMode themeMode}) {
    Get.changeThemeMode(themeMode);
    return themeMode;
  }
}
