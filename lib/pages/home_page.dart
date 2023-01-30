import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_libs/services/ui_services/buttons.dart';

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
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            NavigationButton(label: 'Test', onTap: () {}),
            NavigationButton(label: 'Test', onTap: () {}),
            NavigationButton(label: 'Test', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
