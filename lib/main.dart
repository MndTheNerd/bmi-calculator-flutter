import 'package:flutter/material.dart';
import 'input_page.dart';
import 'custom_widgets/constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
