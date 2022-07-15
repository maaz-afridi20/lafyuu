import 'package:flutter/material.dart';
import 'package:lafyuu/pages/add_card.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/choose_card_widget.dart';

class CreditAndDebit extends StatelessWidget {
  const CreditAndDebit({Key? key}) : super(key: key);

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
          'Credit Card And Debit Card',
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
          const SizedBox(height: 16),
          ChooseCardWidget(
            containerColor: const Color(0xff5C61F4),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const AddCard();
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
