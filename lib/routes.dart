import 'package:bmi_app2/input_page.dart';
import 'package:bmi_app2/results.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kInputPage:
        return MaterialPageRoute(builder: (_) => InputPage());
      case kResultsPage:
        Map<String, dynamic> args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ResultPage(
                  gender: args["gender"],
                  weight: args['weight'],
                  height: args['height'],
                  age: args["age"],
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("NO ROUTES TO FOUND!!"),
                  ),
                ));
    }
  }
}
