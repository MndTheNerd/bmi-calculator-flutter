import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0x0FF090C22),
        scaffoldBackgroundColor: Color(0x0FF101427),
        accentColor: Color(0x0FFEA1556),
        toggleableActiveColor: Color(0x0FFEA1556),
        textSelectionHandleColor: Color(0x0FFEA1556),
      ),
      home: InputPage(),
    );
  }
}
