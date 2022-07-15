import 'package:flutter/material.dart';
import 'package:lafyuu/pages/success_screen.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/choose_card_widget.dart';

class ChoosedCard extends StatelessWidget {
  const ChoosedCard({Key? key}) : super(key: key);

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
          'Payment Method',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
        actions: const [
          Icon(
            Icons.add,
            color: Color(0xff40BFFF),
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
          ),
          const SizedBox(height: 16),
          ChooseCardWidget(
            containerColor: const Color(0xff40BFFF),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Success();
                },
              ));
            },
            child: ButtonContainer(
              buttontext: 'Pay \$766.86',
              buttoncolor: const Color(0xff40BFFF),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
