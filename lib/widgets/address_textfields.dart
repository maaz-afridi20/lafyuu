import 'package:flutter/material.dart';

class AddrssTextFields extends StatelessWidget {
  String? myHintText;
  Icon? myIcon;
  String askingText;

  AddrssTextFields({this.myHintText, this.myIcon, required this.askingText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            askingText,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff223263)),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: myIcon,
                hintText: myHintText,
                hintStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff9098B1)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
