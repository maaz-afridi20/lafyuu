import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/product_offers.dart';
import 'package:lafyuu/widgets/super_flash_sale.dart';

class NewOffers extends StatelessWidget {
  const NewOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Offer',
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
          const Divider(
            thickness: 1,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xff40BFFF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    Text(
                      'Use “MEGSL” Cupon For\nGet 90%off',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xfffafafa),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const SuperFlashSale(),
          ProductOffers(
              mainText: '90% off Super Mega \nsale',
              mainFontSize: 24,
              smallText: 'spcial birthday lafyuu',
              smallFontSize: 12,
              myFontWeight: FontWeight.w700),
        ],
      ),
    );
  }
}
