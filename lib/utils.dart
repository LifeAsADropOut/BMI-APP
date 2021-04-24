import 'package:flutter/material.dart';

enum Gender { MALE, FEMALE, NONE }

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
