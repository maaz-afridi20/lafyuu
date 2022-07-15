import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          size: 23,
          color: Color(0xffFFC833),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFC833),
          size: 23,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFC833),
          size: 23,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFC833),
          size: 23,
        ),
        Icon(
          Icons.star,
          color: Color(0xffEBF0FF),
          size: 23,
        ),
      ],
    );
  }
}
