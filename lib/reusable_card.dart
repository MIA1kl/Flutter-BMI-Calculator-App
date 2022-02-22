import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget{

  final Color myColor;
  final Widget cardChild;
  final Function onPressed;

  ReusableCard({this.myColor, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }



}