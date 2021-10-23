import 'package:flutter/material.dart';
import 'package:tutorial/constands.dart';

class ResultWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Ergebnis',
            style: kAppBarTextStyle,
          ),
        ),
        body: SafeArea(
          child: Column(
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
              Text(
                'Normal 18.5 - 25',
                style: TextStyle(fontSize: 40),
              )
            ],
          ),
        ));
  }
}
