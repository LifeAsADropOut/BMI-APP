import 'package:bmi_app2/utils.dart';
import 'package:flutter/material.dart';
import './routes.dart' as routes;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(context),
      initialRoute: kInputPage,
      onGenerateRoute: routes.Router.generateRoute,
    );
  }
}
