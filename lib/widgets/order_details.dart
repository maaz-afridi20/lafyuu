import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  String orderId;
  OrderDetails({required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffEBF0FF)),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderId,
                style: const TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              Text(
                'Order at Lafyuu : August 1, 2017',
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 12,
                  color: const Color(0xff223263).withOpacity(0.5),
                ),
              ),
              Container(
                decoration: DottedDecoration(
                  strokeWidth: 2,
                  color: const Color(0xffEBF0FF),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Status',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 12,
                        color: const Color(0xff223263).withOpacity(0.5)),
                  ),
                  const Text(
                    'Shipping',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 12,
                        color: Color(0xff223263)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Items',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 12,
                        color: const Color(0xff223263).withOpacity(0.5)),
                  ),
                  const Text(
                    '2 items purchased',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 12,
                        color: Color(0xff223263)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 12,
                        color: const Color(0xff223263).withOpacity(0.5)),
                  ),
                  const Text(
                    '\$299,43',
                    style: TextStyle(
                      letterSpacing: 0.5,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff40BFFF),
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
