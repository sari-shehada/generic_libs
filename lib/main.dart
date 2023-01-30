import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Wrapper());
}

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text("Hello Generic Libs"),
      ),
    );
  }
}
