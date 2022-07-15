import 'package:flutter/material.dart';

class ProductOffers extends StatelessWidget {
  String mainText;
  String smallText;
  double mainFontSize;
  double smallFontSize;
  FontWeight myFontWeight;
  ProductOffers(
      {required this.mainText,
      required this.smallText,
      required this.mainFontSize,
      required this.smallFontSize,
      required this.myFontWeight});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Image.asset(
            'assets/images/image51.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 70,
          left: 50,
          child: Text(
            mainText,
            style: TextStyle(
              fontSize: mainFontSize,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 50,
          child: Text(
            smallText,
            style: TextStyle(
              fontSize: smallFontSize,
              color: Colors.white,
              fontWeight: myFontWeight,
            ),
          ),
        ),
      ],
    );
  }
}
