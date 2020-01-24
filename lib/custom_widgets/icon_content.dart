import 'package:flutter/material.dart';

//Constants for quick edit
const TextStyle labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const double sizedBoxHeight = 15.0;
const double iconSize = 80.0;

//IconContent Custom Widget
class IconContent extends StatelessWidget {
  final IconData mIcon;
  final String label;

  const IconContent({@required this.mIcon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          mIcon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(label, style: labelTextStyle),
      ],
    );
  }
}
