import 'package:bmi_app2/parameter_box.dart';
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
  double _sliderValue = 120.0;

  double _weight = 60.0;
  double _age = 8.0;

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
                        ? kInactiveCardColor
                        : kActiveCardColor,
                    child: IconConent(
                      icon: Icons.male,
                      iconSize: 80.0,
                      iconColor: Colors.white,
                      label: "MALE",
                      labelStyle: kLabelStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    callback: () => updateCardColor(gender: Gender.FEMALE),
                    color: _gender == Gender.NONE || _gender == Gender.MALE
                        ? kInactiveCardColor
                        : kActiveCardColor,
                    child: IconConent(
                      icon: Icons.female,
                      iconSize: 80.0,
                      iconColor: Colors.white,
                      label: "FEMALE",
                      labelStyle: kLabelStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              callback: () {},
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEGHT",
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${_sliderValue.floor()}",
                        style: kNumberStyle,
                      ),
                      Text("cm")
                    ],
                  ),
                  Slider(
                    inactiveColor: Color(0xFF8D8E98),
                    value: _sliderValue,
                    min: kMinHeight,
                    max: kMaxHeight,
                    onChanged: (_sv) {
                      setState(() {
                        _sliderValue = _sv;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    callback: () {},
                    color: kActiveCardColor,
                    child: ParameterBox(
                      onAdd: () => setState(() {
                        _weight = _weight == 500 ? _weight : ++_weight;
                      }),
                      onSubtract: () => setState(() {
                        _weight = _weight == 15 ? _weight : --_weight;
                      }),
                      title: "WEIGHT",
                      param: _weight,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    callback: () {},
                    color: kActiveCardColor,
                    child: ParameterBox(
                      onSubtract: () => setState(() {
                        _age = _age == 1 ? _age : --_age;
                      }),
                      onAdd: () => setState(() {
                        _age = _age == 120 ? _age : ++_age;
                      }),
                      title: "AGE",
                      param: _age,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: kBottomContainerColor,
            height: 80.0,
            child: Center(
                child: Text(
              "CALCULATE YOUR BMI",
              style: kNumberStyle.copyWith(fontSize: 20.0),
            )),
          )
        ],
      ),
    );
  }
}
