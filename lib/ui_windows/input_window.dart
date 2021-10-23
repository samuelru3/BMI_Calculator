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
      body: SafeArea(
        child: Column(
          children: [
            //Icon Buttons
            Expanded(
              child: Row(
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
            ),
            //Alter Eingabe Modul
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Alter',
                              style: kUnitTextStyle,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            '26',
                            style: kValueTextStyle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(''),
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
            ),
            //Größe Eingabe Modul
            Expanded(
              child: Padding(
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
                            width: 80,
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
            ),
            //Gewicht Eingabe Modul
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Gewicht',
                              style: kUnitTextStyle,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            '65',
                            style: kValueTextStyle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('kg'),
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
            ),
            //Play Button
            RoundButtonWidget(
              color: Color(0xFF3E3E4C),
              content: Icon(
                FontAwesomeIcons.play,
                size: 70,
                color: Color(0xFF55B945),
              ),
              isTapped: () {},
            ),
          ],
        ),
      ),
    );
  }
}
