// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  final String buttontext;
  final Color buttoncolor;
  final Color? buttontextcolor;
  final double? buttontextsize;
  final IconData? containericon;
  final FontWeight? buttontextweight;

  ButtonContainer({
    required this.buttontext,
    required this.buttoncolor,
    this.buttontextcolor = Colors.white,
    this.buttontextsize = 14,
    this.buttontextweight = FontWeight.w700,
    this.containericon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 57,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 8,
              offset: Offset(1, 5),
            ),
          ],
          border: Border.all(color: Colors.grey, width: 1),
          color: buttoncolor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                buttontext,
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: buttontextsize,
                  color: buttontextcolor!,
                  fontWeight: buttontextweight!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
