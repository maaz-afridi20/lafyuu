import 'package:flutter/material.dart';
import 'package:lafyuu/pages/add_card_card_name.dart';
import 'package:lafyuu/widgets/address_textfields.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

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
          'Add Card',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(thickness: 1),
          const SizedBox(height: 16),
          AddrssTextFields(
              askingText: 'Card Number', myHintText: 'Enter Card Number'),
          AddrssTextFields(
            askingText: 'Card Holder',
            myHintText: 'Bilal Taxi',
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const AddCardCardName();
                },
              ));
            },
            child: ButtonContainer(
              buttontext: 'Add Card',
              buttoncolor: const Color(0xff40BFFF),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
