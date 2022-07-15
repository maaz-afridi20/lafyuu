import 'package:flutter/material.dart';

class AccountChangesTextfields extends StatelessWidget {
  String myHintText;
  Icon? myIcon;
  Icon? myPrefix;
  double? myFontsize;

  AccountChangesTextfields(
      {required this.myHintText, this.myIcon, this.myPrefix, this.myFontsize});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: myIcon,
        prefixIcon: myPrefix,
        hintText: myHintText,
        hintStyle: TextStyle(
            fontSize: myFontsize,
            color: const Color(0xff9098B1),
            fontWeight: FontWeight.w700),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(.2),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
