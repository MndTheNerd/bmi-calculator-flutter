import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onTap});
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 7.0,
      child: Icon(icon),
      onPressed: onTap,
      constraints: BoxConstraints.tightFor(width: 54.0, height: 54.0),
      shape: CircleBorder(),
      fillColor: kGreyColor,
    );
  }
}
