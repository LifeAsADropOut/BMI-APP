import 'package:bmi_app2/roundIconButton.dart';
import 'package:bmi_app2/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ParameterBox extends StatelessWidget {
  final double param;
  final String title;
  final Function() onSubtract;
  final void Function() onAdd;
  const ParameterBox(
      {required this.title,
      required this.onAdd,
      required this.onSubtract,
      required this.param,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: kLabelStyle,
        ),
        Text(
          "$param",
          style: kNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: onSubtract,
              iconData: FontAwesomeIcons.minus,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              onPressed: onAdd,
              iconData: FontAwesomeIcons.plus,
            ),
          ],
        )
      ],
    );
  }
}
