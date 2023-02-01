import 'package:flutter/material.dart';
import 'package:generic_libs/pages/Theming/themes.dart';
import 'package:get/get.dart';

import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(const Wrapper());
}

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: darkTheme,
      theme: lightTheme,
      home: const HomePage(),
    );
  }
}
