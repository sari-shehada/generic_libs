import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../generic_libs/ui_widgets/buttons.dart';
import 'package:get/get.dart';

import 'Theming/Theming_page.dart';
import 'localization/localization_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generic Libs"),
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: SizedBox.expand(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            NavigationButton(
              label: 'Theming',
              description:
                  "Manage application's theme modes and toggle between Light, Dark and System",
              icon: Icons.color_lens,
              onTap: () => Get.to(() => ThemingPage()),
            ),
            NavigationButton(
              label: 'Localization',
              description: "Manage application's languages and LTR,RTL Support",
              icon: Icons.language,
              onTap: () => Get.to(() => const LocalizationPage()),
            ),
          ],
        ),
      ),
    );
  }
}
