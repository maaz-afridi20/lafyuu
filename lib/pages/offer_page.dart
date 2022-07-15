import 'package:flutter/material.dart';
import 'package:lafyuu/pages/fovourite_product.dart';
import 'package:lafyuu/widgets/stars.dart';

import '../widgets/small_container.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
        actions: const [
          Icon(
            Icons.search,
            color: Color(0xff9098B1),
            size: 25,
          ),
          SizedBox(width: 12),
        ],
        title: const Text(
          'Super Flash Sale',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 12),
            const Divider(
              thickness: 1,
              color: Color(0xffEBF0FF),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/promotionimage.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    top: 40,
                    left: 35,
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
                    left: 35,
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
                    top: 145,
                    left: 24,
                    bottom: 10,
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
                              fontSize: 30,
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
                              fontSize: 30,
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
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FavouriteProduct();
                    },
                  ));
                },
                child: Row(
                  children: [
                    Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffEBF0FF),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/mega-image2.png',
                                    width: 145,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Nike Air Max 270',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              'React ENG',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Stars(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  '\$543,99',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    letterSpacing: 0.5,
                                    fontSize: 10,
                                    color: Color(0xff9098B1),
                                  ),
                                ),
                                Text(
                                  '24% OFF',
                                  style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 13),
                    Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffEBF0FF),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return const FavouriteProduct();
                                        },
                                      ));
                                    },
                                    child: Image.asset(
                                      'assets/images/mega-image1.png',
                                      width: 145,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Nike Air Max 270',
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 0.5,
                                color: Color(0xff223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              'React ENG',
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 0.5,
                                color: Color(0xff223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Stars(),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  '\$543,99',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    color: Color(0xff9098B1),
                                  ),
                                ),
                                Text(
                                  '24% OFF',
                                  style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            //
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffEBF0FF),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/recomended1.png',
                                  width: 145,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Nike Air Max 270',
                            style: TextStyle(
                              letterSpacing: 0.5,
                              fontSize: 12,
                              color: Color(0xff223263),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            'React ENG',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 0.5,
                              color: Color(0xff223263),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Stars(),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '\$543,99',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 10,
                                  letterSpacing: 0.5,
                                  color: Color(0xff9098B1),
                                ),
                              ),
                              Text(
                                '24% OFF',
                                style: TextStyle(
                                  fontSize: 10,
                                  letterSpacing: 0.5,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffEBF0FF),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/recomended3.png',
                                  width: 145,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Nike Air Max 270',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 0.5,
                              color: Color(0xff223263),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            'React ENG',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 0.5,
                              color: Color(0xff223263),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Stars(),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$543,99',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 10,
                                  letterSpacing: 0.5,
                                  color: Colors.grey.withOpacity(0.8),
                                ),
                              ),
                              const Text(
                                '24% OFF',
                                style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
