import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  final String textCard;
  final IconData iconCard;
  CardContent(this.iconCard,this.textCard);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconCard,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(textCard,
          style: kLabelTextStyle,)

      ],
    );
  }
}




