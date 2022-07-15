import 'package:flutter/material.dart';

class ShippingContainer extends StatelessWidget {
  String receiveName;
  ShippingContainer({required this.receiveName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 240,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xff40BFFF),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                receiveName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              const Text(
                '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9098B1),
                ),
              ),
              const Text(
                '+99 1234567890',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9098B1),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 57,
                    width: 77,
                    decoration: BoxDecoration(
                      color: const Color(0xff40BFFF),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 8,
                          offset: const Offset(1, 5),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.delete_outline_outlined,
                    size: 26,
                    color: Color(0xff223263),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
