import 'package:flutter/material.dart';
import 'package:lafyuu/pages/choosed_card.dart';
import 'package:lafyuu/pages/credit_and_debit.dart';
import 'package:lafyuu/widgets/payment_method_listile.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
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
              color: Color(0xff223263)),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ChoosedCard();
                },
              ));
            },
            child: PaymentMethodLisTile(
              tileColor: const Color(0xffEBF0FF),
              tileImage: Image.asset(
                'assets/icons/debitcard.png',
                height: 40,
                width: 40,
              ),
              tileText: 'Credit Card Or Debit Card',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const CreditAndDebit();
                },
              ));
            },
            child: PaymentMethodLisTile(
              tileImage: Image.asset(
                'assets/icons/paypal.png',
                height: 40,
                width: 40,
              ),
              tileText: 'PayPal',
            ),
          ),
          PaymentMethodLisTile(
            tileImage: Image.asset(
              'assets/icons/bank.png',
              height: 40,
              width: 40,
            ),
            tileText: 'Bank Transfer',
          ),
        ],
      ),
    );
  }
}
