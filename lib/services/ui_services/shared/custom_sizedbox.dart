import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddVerticalSpacing extends StatelessWidget {
  const AddVerticalSpacing({super.key, required this.value});

  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}

class AddHorizontalSpacing extends StatelessWidget {
  const AddHorizontalSpacing({super.key, required this.value});

  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value,
    );
  }
}
