import 'package:flutter/material.dart';
import 'package:generic_libs/pages/home_page.dart';

void main(List<String> args) {
  runApp(const Wrapper());
}

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
