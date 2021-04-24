import 'package:flutter/material.dart';

const String kInputPage = '/';
const String kResultsPage = '/results';

enum Gender { MALE, FEMALE, NONE }

const String kAppBarTitle = "BMI CALCULATOR";

const double kMaxHeight = 220.0;
const double kMinHeight = 120.0;

const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kInactiveCardColor = Color(0xFF111328);
const Color kLabelColor = Color(0xFF8D8E98);
const Color kBottomContainerColor = Color(0xFFEB1555);

const TextStyle kLabelStyle = TextStyle(
  color: kLabelColor,
  fontWeight: FontWeight.bold,
);

const TextStyle kNumberStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 28.0,
);

ThemeData appTheme(BuildContext context) => ThemeData.dark().copyWith(
      sliderTheme: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.white,
        thumbColor: Colors.pink,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        overlayColor: Colors.pink.withAlpha(40),
      ),
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(
        0xFF0A0E21,
      ),
    );
