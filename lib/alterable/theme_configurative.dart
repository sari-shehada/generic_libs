part of 'global_configurative.dart';

abstract class ThemeConfigurative {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: Colors.red,
  );

  static ThemeData lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
  );

  //TODO: Text Theme Is Defaulted
}
