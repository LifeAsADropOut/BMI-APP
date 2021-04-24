import 'package:bmi_app2/utils.dart';
import 'package:flutter/material.dart';

class BottomContainerButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  const BottomContainerButton(
      {required this.label, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        color: kBottomContainerColor,
        height: 80.0,
        child: Center(
          child: Text(
            label,
            style: kNumberStyle.copyWith(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
