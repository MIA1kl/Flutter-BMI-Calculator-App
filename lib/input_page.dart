import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_content.dart';
import 'constants.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GenderType selectedGender;
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    myColor: selectedGender == GenderType.male ? kActiveCardColor : kInactiveCardColor,
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
                    myColor: selectedGender == GenderType.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: CardContent(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumbersTextStyle),
                      Text('CM', style: kLabelTextStyle,)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Color(0xFFFFFFFF),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 40.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: kMinSliderValue,
                        max: kMaxSliderValue,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.toInt();
                          });
                        }),
                  ),
                ],
              ),
              myColor: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    myColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: kBottomButtonColor,
              width: double.infinity,
              height: kBottomButtonHeight,
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
