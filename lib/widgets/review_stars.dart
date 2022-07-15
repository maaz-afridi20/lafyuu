import 'package:flutter/material.dart';

class ReviewStart extends StatelessWidget {
  final String containerText;

  ReviewStart({required this.containerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: const Color(0xffEBF0FF),
        ),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.star,
              color: Color(0xffFFC833),
              size: 20,
            ),
            Text(
              containerText,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xff9098B1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
