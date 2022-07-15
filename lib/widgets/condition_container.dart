import 'package:flutter/material.dart';

class ConditionContainer extends StatelessWidget {
  double containerWidth;
  Color containerBackgroungColor;
  String containerText;
  Color containerTextColor;

  ConditionContainer(
      {required this.containerBackgroungColor,
      required this.containerText,
      required this.containerWidth,
      required this.containerTextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: 50,
      decoration: BoxDecoration(
        color: containerBackgroungColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.grey.withOpacity(0.1),
        ),
      ),
      child: Center(
        child: Text(
          containerText,
          style: TextStyle(
            letterSpacing: 1,
            color: containerTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
