import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/ui_services/theming_service/theming_service.dart';

class ThemingController extends GetxController {
  RxString currentThemeMode = "NaN".obs;

  ThemingController() {}

  toggleThemeMode() {
    ThemeMode themeMode = ThemingService.toggleTheme();
  }
}
