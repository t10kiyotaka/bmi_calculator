import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT PAGE'),
      ),
      body: Center(
        child: Container(
          child: Text('Your BMI is'),
        ),
      ),
    );
  }
}
