import 'package:flutter/material.dart';

class ChooseCardWidget extends StatelessWidget {
  Color containerColor;
  ChooseCardWidget({required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 190,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: const [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffC4C4C4),
                  ),
                  Positioned(
                    left: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffC4C4e0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    '6326',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    '9124',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    '8124',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    '9875',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Card Holder',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xfffafafa),
                    ),
                  ),
                  Text(
                    'Card Save',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xfffafafa),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Lailyfa Febrina',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfffafafa),
                    ),
                  ),
                  Text(
                    '19/2042',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfffafafa),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
