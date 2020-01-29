import 'package:flutter/material.dart';
import 'custom_widgets/constants.dart';
import 'custom_widgets/reusable_card.dart';
import 'custom_widgets/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  String textResult = 'overweight';
  int result = 0;
  String tip = 'awesome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    textResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    result.toString(),
                    style: kResultNumberTextStyle,
                  ),
                  Text(
                    tip,
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
