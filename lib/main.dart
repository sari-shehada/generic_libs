import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generic_libs/generic_libs/dev_tools/dev_tools.dart';
import 'package:get/get.dart';

import 'development_params/global_configurative.dart';
import 'driver_code/pages/home_page.dart';

void main(List<String> args) {
  //TODO: Call This Method In Wrapper Widget on param called "allowDebugging"
  DevTools.init();
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
