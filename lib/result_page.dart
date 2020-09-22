import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Your Result',
            style: kTitleTextStyle,
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Normal',
                    textAlign: TextAlign.center,
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.0',
                    textAlign: TextAlign.center,
                    style: kBMITextStyle,
                  ),
                  Text(
                    'You\'re very normal!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
