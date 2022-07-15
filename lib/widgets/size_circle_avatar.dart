import 'package:flutter/material.dart';

class SizeCircleAvatar extends StatelessWidget {
  final String? mytext;
  final Color? mybackgroundColor;
  final Color? secondbackgroundColor;
  SizeCircleAvatar(
      {this.mytext = '',
      this.mybackgroundColor = Colors.transparent,
      this.secondbackgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: mybackgroundColor!,
      child: CircleAvatar(
        radius: 21,
        backgroundColor: secondbackgroundColor!,
        child: Center(
          child: Text(
            mytext!,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xff223263),
              letterSpacing: 0.5,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
