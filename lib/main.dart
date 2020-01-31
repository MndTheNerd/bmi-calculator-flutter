import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_widgets/constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        accentColor: kAccentColor,
      ),
      home: InputPage(),
    );
  }
}
