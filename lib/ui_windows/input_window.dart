import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutorial/bmi_calculator.dart';
import 'package:tutorial/ui_components/RoundButtonWidget.dart';
import 'package:tutorial/ui_windows/result_window.dart';
import '../constands.dart';
import 'result_window.dart';

class InputWindow extends StatefulWidget {
  @override
  _InputWindowState createState() => _InputWindowState();
}

class _InputWindowState extends State<InputWindow> {
  String gender = kMale;
  int age = 25;
  int height = 180;
  int weight = 65;

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
                    color: gender == kMale
                        ? kDarkGrayWidgetBackgroundColor
                        : kLightGrayWidgetBackgroundColor,
                    content: Icon(
                      FontAwesomeIcons.male,
                      size: 70,
                      color: Color(0xFFC2EBFF),
                    ),
                    isTapped: () {
                      setState(() {
                        gender = kMale;
                      });
                    },
                  ),
                  RoundButtonWidget(
                    color: gender == kFemale
                        ? kDarkGrayWidgetBackgroundColor
                        : kLightGrayWidgetBackgroundColor,
                    content: Icon(
                      FontAwesomeIcons.female,
                      size: 70,
                      color: Color(0xFFFFC0D1),
                    ),
                    isTapped: () {
                      setState(() {
                        gender = kFemale;
                      });
                    },
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
                            age.toString(),
                            style: kValueTextStyle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(''),
                        ],
                      ),
                      Slider(
                        value: age.toDouble(),
                        min: 0,
                        max: 140,
                        onChanged: (double newValue) {
                          setState(() {
                            age = newValue.round();
                          });
                        },
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
                            height.toString(),
                            style: kValueTextStyle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('cm'),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 30,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
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
                            weight.toString(),
                            style: kValueTextStyle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('kg'),
                        ],
                      ),
                      Slider(
                        value: weight.toDouble(),
                        min: 0,
                        max: 200,
                        onChanged: (double newValue) {
                          setState(() {
                            weight = newValue.round();
                          });
                        },
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
              isTapped: () {
                BMICalculator result = BMICalculator(
                  gender: gender,
                  height: height,
                  weight: weight,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultWindow(
                      bmiResult: result.bmiCalculation(),
                      bmiColor: result.getBMIColor(),
                      bmiText: result.getBMIText(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
