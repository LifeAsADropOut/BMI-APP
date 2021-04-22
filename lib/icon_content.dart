import 'package:flutter/material.dart';

class IconConent extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final double iconSize;
  final TextStyle labelStyle;
  IconConent(
      {required this.icon,
      required this.labelStyle,
      required this.iconColor,
      required this.label,
      required this.iconSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 60,
        ),
        SizedBox(height: 15.0),
        Text(
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}
