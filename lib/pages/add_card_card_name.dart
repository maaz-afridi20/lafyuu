import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/address_textfields.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/choose_card_widget.dart';

class AddCardCardName extends StatelessWidget {
  const AddCardCardName({Key? key}) : super(key: key);

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
          'Lailyfa Febrina Card',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(thickness: 1),
          ChooseCardWidget(
            containerColor: const Color(0xff40BFFF),
          ),
          const SizedBox(height: 24),
          AddrssTextFields(
            askingText: 'Card Number',
            myHintText: '1231 - 2312 - 3123 - 1231',
          ),
          AddrssTextFields(
            askingText: 'Card Holder',
            myHintText: 'Lailyfa Febrina',
          ),
          const Spacer(),
          ButtonContainer(
            buttontext: 'Save',
            buttoncolor: const Color(0xff40BFFF),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
