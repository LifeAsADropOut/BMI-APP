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
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppBarTitle),
        actions: [],
      ),
      body: Column(
        children: [
          Text(
            "Your Result",
            style: kNumberStyle.copyWith(fontSize: 30.0),
          ),
          Expanded(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
