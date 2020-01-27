import 'package:flutter/material.dart';
import 'constants.dart';

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
          size: kIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
