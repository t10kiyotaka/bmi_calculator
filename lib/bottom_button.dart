import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/result');
      },
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            'CALCULATE',
            style: kLargeButtonTextStyle,
          ),
        ),
        color: bottomContainerColor,
        height: bottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
