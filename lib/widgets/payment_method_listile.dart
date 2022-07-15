import 'package:flutter/material.dart';

class PaymentMethodLisTile extends StatelessWidget {
  Image tileImage;
  String? tileText;
  Color? tileColor;

  PaymentMethodLisTile(
      {required this.tileImage, this.tileText = '', this.tileColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: tileColor,
      leading: tileImage,
      title: Text(
        tileText!,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
      ),
    );
  }
}
