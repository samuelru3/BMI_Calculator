import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutorial/constands.dart';
import 'package:tutorial/ui_components/RoundButtonWidget.dart';
import 'package:tutorial/ui_windows/input_window.dart';

class ResultWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Ergebnis',
            style: kAppBarTextStyle,
          ),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFF55B945),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    '20.1',
                    style: TextStyle(
                      fontSize: 90,
                    ),
                  )
                ],
              ),
              Center(
                child: Text(
                  'Normal 18.5 - 25',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              RoundButtonWidget(
                color: kLightGrayWidgetBackgroundColor,
                content: Icon(
                  FontAwesomeIcons.reply,
                  size: 70,
                  color: Color(0xFF0047FF),
                ),
                isTapped: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputWindow()),
                  );
                  //Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
