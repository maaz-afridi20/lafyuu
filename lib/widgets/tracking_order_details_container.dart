import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TrackingOrderDetailsContainer extends StatelessWidget {
  Image productImage;

  TrackingOrderDetailsContainer({Key? key, required this.productImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 104,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffEBF0FF),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              productImage,
              const SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Nike Air Zoom Pegasus\n36 Miami',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff223263)),
                      ),
                      SizedBox(width: 60),
                      Icon(
                        Icons.favorite,
                        color: Color(0xffFB7181),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        '299,43',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff40BFFF),
                        ),
                      ),
                    ],
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
