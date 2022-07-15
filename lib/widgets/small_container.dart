import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  final String containertext;
  final FontWeight textfont;
  final double? textsize;
  final Color? textcolor;

  SmallContainer(
      {required this.containertext,
      required this.textfont,
      this.textsize = 16,
      this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          containertext,
          style: TextStyle(
              fontWeight: textfont, fontSize: textsize, color: textcolor),
        ),
      ),
    );
  }
}
