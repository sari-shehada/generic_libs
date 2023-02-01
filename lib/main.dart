import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generic_libs/alterable/global_configurative.dart';
import 'package:get/get.dart';

import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(const Wrapper());
}

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        GlobalConfigurative.defaultScreenWidth,
        GlobalConfigurative.defaultScreenHeight,
      ),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          darkTheme: GlobalConfigurative.darkTheme,
          theme: GlobalConfigurative.lightTheme,
          home: const HomePage(),
        );
      },
    );
  }
}
