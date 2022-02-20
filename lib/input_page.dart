import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  ReusableCard(Color(0xFF1D1E33)),
                  ReusableCard(Color(0xFF1D1E33)),
                ],
              ),
            ),
            ReusableCard(Color(0xFF1D1E33)),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(Color(0xFF1D1E33)),
                  ReusableCard(Color(0xFF1D1E33)),
                ],
              ),
            ),

          ],
        ),);
  }
}

class ReusableCard extends StatelessWidget{

  final Color myColor;

  ReusableCard(this.myColor);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
  
}


