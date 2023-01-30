import 'package:flutter/material.dart';
import 'package:generic_libs/pages/Theming/theming_controller.dart';

class ThemingPage extends StatelessWidget {
  ThemingPage({super.key});

  final ThemingController _controller = ThemingController();
  @override
  Widget build(BuildContext context) {
    double upperPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: (upperPadding + 15), left: 15, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Current Theme Mode",
                style: TextStyle(fontSize: 20, color: Colors.grey[800]),
              ),
              Text(
                _controller.currentThemeMode.value,
                style: TextStyle(fontSize: 20, color: Colors.amber[800]),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
