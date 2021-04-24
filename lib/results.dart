import 'package:bmi_app2/bottomContainerButton.dart';
import 'package:bmi_app2/reusableCard.dart';
import 'package:bmi_app2/utils.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double weight;
  final double height;
  final double age;
  final Gender gender;

  const ResultPage(
      {required this.gender,
      required this.weight,
      required this.height,
      required this.age,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double bmi = weight * 10000 / (height * height);
    String? bmiLabel = "";
    String? bmiMessage = "";

    if (bmi >= 25.0) {
      bmiLabel = "OVERWEIGHT";
      bmiMessage = kBMIlogs["high"];
    } else if (bmi < 25.0 && bmi >= 18.5) {
      bmiLabel = "NORMAL";
      bmiMessage = kBMIlogs["normal"];
    } else {
      bmiLabel = "UNDERWEIGHT";
      bmiMessage = kBMIlogs["underweight"];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(kAppBarTitle),
        actions: [],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
              child: Text(
                "Your Result",
                style: kNumberStyle.copyWith(fontSize: 35.0),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              callback: () {},
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiLabel,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${bmi.round()}",
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiMessage.toString(),
                    textAlign: TextAlign.center,
                    style: kNumberStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomContainerButton(
            label: "RE-CALCULATE BMI",
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
