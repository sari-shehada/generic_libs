part of 'extensions_export.dart';

extension NumbersExtensions on num {
  //Generic related extensions
  bool get isZero => this == 0;
  bool get isNotZero => !isZero;

  //Responsiveness related extensions
  double get responsiveFromHeight => h;
  double get responsiveFromWidth => w;
  double get responsiveFromTextSize => sp;
  double get responsiveFromRatioHeight => ScreenUtil.defaultSize.height * this;
  double get responsiveFromRatioWidth => ScreenUtil.defaultSize.width * this;
  //To Ensure consistent values across all radiuses
  double get responsiveFromRadius => sp;
}
