import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../services/ui_services/buttons.dart';
import 'package:get/get.dart';

import 'Theming/Theming_page.dart';

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
                  "Manage Application's Theme Modes And Toggle Between Light, Dark and System",
              onTap: () => Get.to(() => ThemingPage()),
            ),
          ],
        ),
      ),
    );
  }
}
