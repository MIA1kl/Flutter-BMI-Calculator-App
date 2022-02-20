import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget{

  final Color myColor;
  final Widget cardChild;

  ReusableCard({this.myColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15.0),
    );
  }

}