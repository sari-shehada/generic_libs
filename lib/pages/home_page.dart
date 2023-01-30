import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_libs/pages/Theming/theming_page.dart';
import 'package:generic_libs/services/ui_services/buttons.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generic Libs"),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: SizedBox.expand(
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            NavigationButton(
                label: 'Theming', onTap: () => Get.to(() => ThemingPage())),
            NavigationButton(label: 'Test', onTap: () {}),
            NavigationButton(label: 'Test', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
