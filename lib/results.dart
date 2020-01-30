import 'package:flutter/material.dart';
import 'custom_widgets/constants.dart';
import 'custom_widgets/reusable_card.dart';
import 'custom_widgets/bottom_button.dart';
import 'calulator.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmi,@required this.results, @required this.feedBack });

  final String bmi;
  final String results;
  final String feedBack;

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
                    results,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kResultNumberTextStyle,
                  ),
                  Text(
                    feedBack,
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
