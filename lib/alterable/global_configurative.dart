library global_configurative;

import 'package:flutter/material.dart';
part 'theme_configurative.dart';

abstract class GlobalConfigurative {
  static const double defaultScreenWidth = 540;
  static const double defaultScreenHeight = 960;

  ///
  static ThemeData darkTheme = ThemeConfigurative.darkTheme;
  static ThemeData lightTheme = ThemeConfigurative.lightTheme;
}
