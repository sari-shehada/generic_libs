import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key, required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        child: Text(label),
      ),
    );
  }
}
