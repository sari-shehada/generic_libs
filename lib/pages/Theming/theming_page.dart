import 'package:flutter/material.dart';
import 'package:generic_libs/services/ui_services/shared/shared.dart';
import '../../services/ui_services/buttons.dart';
import 'theming_controller.dart';

class ThemingPage extends StatelessWidget {
  ThemingPage({super.key});

  final ThemingController _controller = ThemingController();
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
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
                      style: themeData.textTheme.titleLarge),
                  Text(
                      _controller.currentThemeMode.value == ThemeMode.light
                          ? "Light"
                          : _controller.currentThemeMode.value ==
                                  ThemeMode.system
                              ? "System"
                              : "Dark",
                      style: themeData.textTheme.titleLarge!
                          .copyWith(color: Colors.red)),
                ],
              ),
              const AddVerticalSpacing(value: 10),
              TestSegment(
                  testTitle: "\"Toggle Theme\" Feature Test",
                  containerBackColor: themeData.scaffoldBackgroundColor,
                  children: [
                    const AddVerticalSpacing(value: 15),
                    BasicButton.fromThemeData(
                      child: "Toggle Theme Mode",
                      onTap: () => _controller.toggleThemeMode(),
                      themeData: themeData,
                    ),
                  ]),
              const AddVerticalSpacing(value: 20),
              TestSegment(
                  testTitle: "\"Change Theme Mode\" Feature Test",
                  containerBackColor: themeData.scaffoldBackgroundColor,
                  children: [
                    const AddVerticalSpacing(value: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose Theme Mode",
                          style: themeData.textTheme.labelLarge,
                        ),
                        DropdownButton(
                            items: const [
                              DropdownMenuItem(
                                value: ThemeMode.light,
                                child: Text("Light"),
                              ),
                              DropdownMenuItem(
                                value: ThemeMode.dark,
                                child: Text("Dark"),
                              ),
                              DropdownMenuItem(
                                value: ThemeMode.system,
                                child: Text("System"),
                              )
                            ],
                            onChanged: (themeMode) {
                              _controller.setThemeMode(themeMode!);
                            }),
                      ],
                    )
                  ]),
              const AddVerticalSpacing(value: 10),
            ],
          ),
        ));
  }
}

class TestSegment extends StatelessWidget {
  const TestSegment(
      {super.key,
      required this.children,
      required this.containerBackColor,
      required this.testTitle});

  final Color containerBackColor;
  final String testTitle;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: containerBackColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 13,
                offset: const Offset(0, 4))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            testTitle,
            style: themeData.textTheme.titleMedium,
          ),
          ...children,
        ],
      ),
    );
  }
}
