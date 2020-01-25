import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_widgets/icon_content.dart';
import 'custom_widgets/reusable_card.dart';

const Color activeCardColor = Color(0x0FF1D1F33);
const Color accentColor = Color(0x0FFEA1556);
const Color inActiveColor = Color(0xFF141427); //#141427
const bottomContainerHeight = 80.0;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedGender = Gender.male;
                          //updateCardColor(Gender.male);
                        },
                      );
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inActiveColor,
                      cardChild: IconContent(
                        mIcon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inActiveColor,
                      cardChild: IconContent(
                        mIcon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                ))
              ],
            ),
          ),
          Container(
            color: accentColor,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
