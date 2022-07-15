import 'package:flutter/material.dart';
import 'package:lafyuu/pages/add_address.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/shipping_container.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          'Address',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Divider(thickness: 1),
          ShippingContainer(receiveName: 'Priscekila'),
          const SizedBox(height: 16),
          ShippingContainer(receiveName: 'Ahmad Khaidir'),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const AddAddress();
                },
              ));
            },
            child: ButtonContainer(
              buttontext: 'Add Address',
              buttoncolor: const Color(0xff40BFFF),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
