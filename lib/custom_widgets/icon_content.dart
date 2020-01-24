import 'package:flutter/material.dart';

const Color textColor = Color(0xFF8D8E98);

class IconContent extends StatelessWidget {
  final IconData mIcon;
  final String mText;

  const IconContent({@required this.mIcon, this.mText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          mIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          mText,
          style: TextStyle(
            fontSize: 18.0,
            color: textColor,
            //Color(0xFF8D8E98)
          ),
        ),
      ],
    );
  }
}
