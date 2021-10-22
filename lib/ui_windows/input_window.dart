import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutorial/ui_components/RoundButtonWidget.dart';

import '../constands.dart';

class InputWindow extends StatefulWidget {
  @override
  _InputWindowState createState() => _InputWindowState();
}

class _InputWindowState extends State<InputWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI-Rechner',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Größe',
                          style: kUnitTextStyle,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        '180',
                        style: kValueTextStyle,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('cm'),
                    ],
                  ),
                  Slider(
                    value: 50,
                    min: 0,
                    max: 200,
                    onChanged: (x) {},
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: kLightGrayWidgetBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
