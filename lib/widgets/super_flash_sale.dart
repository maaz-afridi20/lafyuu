import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/small_container.dart';

import '../pages/offer_page.dart';

class SuperFlashSale extends StatelessWidget {
  const SuperFlashSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Stack(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const OfferPage();
                  },
                ));
              },
              child: Image.asset(
                'assets/images/promotionimage.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            top: 40,
            left: 25,
            child: Text(
              'Super Flash Sale',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            top: 80,
            left: 25,
            child: Text(
              '50% Off',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 125,
            left: 24,
            bottom: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SmallContainer(
                  containertext: '08',
                  textfont: FontWeight.w700,
                  textsize: 16,
                  textcolor: const Color(0xff223263),
                ),
                const SizedBox(width: 6),
                const Center(
                  child: Text(
                    ':',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                SmallContainer(
                  containertext: '34',
                  textfont: FontWeight.w700,
                  textsize: 16,
                  textcolor: const Color(0xff223263),
                ),
                const SizedBox(width: 6),
                const Center(
                  child: Text(
                    ':',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                SmallContainer(
                  containertext: '52',
                  textfont: FontWeight.w700,
                  textsize: 16,
                  textcolor: const Color(0xff223263),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
