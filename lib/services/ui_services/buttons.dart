import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {super.key,
      required this.label,
      required this.onTap,
      this.description = ""});

  final String label;
  final String description;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12)
      ]),
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Material(
        color: themeData.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          splashColor: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.only(top: 13, bottom: 13),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
                child: ListTile(
              leading: Icon(
                Icons.color_lens,
                size: 40,
                color: themeData.primaryColor,
              ),
              title: Text(
                label,
                style: themeData.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: themeData.primaryColor),
              ),
              subtitle: description == ""
                  ? null
                  : Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        description,
                        style: themeData.textTheme.bodySmall!
                            .copyWith(fontSize: 13),
                      ),
                    ),
            )),
          ),
        ),
      ),
    );
  }
}

class BasicButton extends StatelessWidget {
  const BasicButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.buttonBackColor,
    this.highLightColor,
    this.borderRadiusValue = 8,
  });

  factory BasicButton.fromThemeData(
      {required String label,
      required VoidCallback onTap,
      required ThemeData themeData,
      Color? highLightColor,
      double borderRadiusValue = 8}) {
    return BasicButton(
      label: label,
      onTap: onTap,
      buttonBackColor: themeData.primaryColor,
      borderRadiusValue: borderRadiusValue,
      highLightColor: highLightColor,
    );
  }

  final String label;
  final VoidCallback onTap;
  final Color buttonBackColor;
  final Color? highLightColor;
  final double borderRadiusValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12)
      ]),
      child: Material(
        color: buttonBackColor,
        borderRadius: BorderRadius.circular(borderRadiusValue),
        child: InkWell(
          splashColor: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadiusValue),
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadiusValue),
            ),
            child: Center(child: Text(label)),
          ),
        ),
      ),
    );
  }
}
