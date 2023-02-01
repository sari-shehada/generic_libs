import 'package:flutter/material.dart';
import 'package:generic_libs/services/extensions_services/extensions_export.dart';

class AddVerticalSpacing extends StatelessWidget {
  const AddVerticalSpacing({super.key, required this.value});

  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value.responsiveFromHeight,
    );
  }
}

class AddHorizontalSpacing extends StatelessWidget {
  const AddHorizontalSpacing({super.key, required this.value});

  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value.responsiveFromWidth,
    );
  }
}
