import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutorial/ui_windows/input_window.dart';

import 'constands.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(BMICalc()));
}

class BMICalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Sansation',
              bodyColor: Colors.white,
            ),
      ),
      home: InputWindow(),
    );
  }
}
