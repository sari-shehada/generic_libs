import 'package:flutter/material.dart';
import 'package:generic_libs/services/ui_services/shared/shared.dart';
import 'package:generic_libs/services/ui_services/theming_service/theming_service.dart';
import 'theming_controller.dart';

class ThemingPage extends StatelessWidget {
  ThemingPage({super.key});

  final ThemingController _controller = ThemingController();
  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);
    //TODO: Remove this line later if you don't end up using it
    //double upperPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(title: const Text("Theming")),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Current Theme Mode",
                      style: _themeData.textTheme.titleLarge),
                  Text(_controller.currentThemeMode.value,
                      style: _themeData.textTheme.titleLarge!
                          .copyWith(color: Colors.red)),
                ],
              ),
              const AddVerticalSpacing(value: 20),
              Text(
                "\"Toggle Theme\" Feature Test",
                style: _themeData.textTheme.titleMedium,
              ),
              const AddVerticalSpacing(value: 10),
              InkWell(
                onTap: () => _controller.toggleThemeMode(),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: _themeData.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 12)
                      ]),
                  child: const Center(child: Text("Toggle Theme Mode")),
                ),
              )
            ],
          ),
        ));
  }
}
