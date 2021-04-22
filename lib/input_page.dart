import 'package:bmi_app2/utils.dart';
import 'package:flutter/material.dart';

import 'reusableCard.dart';
import 'icon_content.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _gender = Gender.NONE;

  void updateCardColor({required Gender gender}) => setState(() {
        _gender = gender;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    callback: () => updateCardColor(gender: Gender.MALE),
                    color: _gender == Gender.NONE || _gender == Gender.FEMALE
                        ? inactiveCardColor
                        : activeCardColor,
                    child: IconConent(
                      icon: Icons.male,
                      iconSize: 80.0,
                      iconColor: Colors.white,
                      label: "MALE",
                      labelStyle: TextStyle(
                        color: labelColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    callback: () => updateCardColor(gender: Gender.FEMALE),
                    color: _gender == Gender.NONE || _gender == Gender.MALE
                        ? inactiveCardColor
                        : activeCardColor,
                    child: IconConent(
                      icon: Icons.female,
                      iconSize: 80.0,
                      iconColor: Colors.white,
                      label: "FEMALE",
                      labelStyle: TextStyle(
                        color: labelColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              callback: () {},
              color: activeCardColor,
              child: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    callback: () {},
                    color: activeCardColor,
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    callback: () {},
                    color: activeCardColor,
                    child: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: bottomContainerCcolor,
            height: 80.0,
          )
        ],
      ),
    );
  }
}
