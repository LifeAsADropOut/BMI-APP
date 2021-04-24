import 'package:flutter/material.dart';
import './input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      theme: ThemeData.dark().copyWith(
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
      ),
      home: InputPage(),
    );
  }
}
