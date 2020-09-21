import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'input_data.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0C0D22),
        scaffoldBackgroundColor: Color(0xFF0C0D22),
      ),
      home: InputPage(),
      routes: {
        '/result': (context) => ResultsPage(),
      },
    );
  }
}
