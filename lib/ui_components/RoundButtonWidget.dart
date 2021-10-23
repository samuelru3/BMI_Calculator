import 'package:flutter/material.dart';

class RoundButtonWidget extends StatelessWidget {
  RoundButtonWidget({
    @required this.color,
    @required this.content,
    @required this.isTapped,
  });

  final Color color;
  final Widget content;
  final Function isTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isTapped,
      child: Container(
        child: content,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(70),
        ),
      ),
    );
  }
}
