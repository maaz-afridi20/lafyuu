import 'package:flutter/material.dart';
import 'package:lafyuu/pages/payment_method.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/shipping_container.dart';

class ShipTo extends StatelessWidget {
  const ShipTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff9098B1),
          ),
        ),
        backgroundColor: const Color(0xfffafafa),
        title: const Text(
          'Ship To',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff223263)),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
          ),
          ShippingContainer(receiveName: 'Priscekila'),
          const SizedBox(height: 16),
          ShippingContainer(receiveName: 'Ahmad Khaidir'),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const PaymentMethod();
                },
              ));
            },
            child: ButtonContainer(
              buttontext: 'Next',
              buttoncolor: const Color(0xff40BFFF),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
