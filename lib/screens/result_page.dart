import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../path.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArgumentsForResultPage args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Result',
            textAlign: TextAlign.center,
            style: kTitleTextStyle,
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    args.result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.bmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pushNamed(context, Path().home);
            },
          )
        ],
      ),
    );
  }
}

class ScreenArgumentsForResultPage {
  ScreenArgumentsForResultPage({@required this.result, @required this.bmi, @required this.interpretation});

  final String result;
  final String bmi;
  final String interpretation;
}
