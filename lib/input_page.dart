import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_content.dart';

const bottomButtonHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomButtonColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPressed: (){
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    myColor: selectedGender == GenderType.male ? activeCardColor : inactiveCardColor,
                    cardChild: CardContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: (){
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    myColor: selectedGender == GenderType.female ? activeCardColor : inactiveCardColor,
                    cardChild: CardContent(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              myColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    myColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: bottomButtonColor,
              width: double.infinity,
              height: bottomButtonHeight,
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xFFFFFFFF),
                ),
              ))
        ],
      ),
    );
  }
}

enum GenderType{
  male,
  female,
}
