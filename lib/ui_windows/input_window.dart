import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutorial/ui_components/RoundButtonWidget.dart';

class InputWindow extends StatefulWidget {
  @override
  _InputWindowState createState() => _InputWindowState();
}

class _InputWindowState extends State<InputWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI-Rechner'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              RoundButtonWidget(
                color: Color(0xFF3E3E4C),
                content: Icon(
                  FontAwesomeIcons.male,
                  size: 70,
                  color: Color(0xFFC2EBFF),
                ),
                isTapped: () {},
              ),
              RoundButtonWidget(
                color: Color(0xFF3E3E4C),
                content: Icon(
                  FontAwesomeIcons.female,
                  size: 70,
                  color: Color(0xFFFFC0D1),
                ),
                isTapped: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
