import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color = activeCardColor, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: cardChild,
      ),
    );
  }
}
