import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/stars.dart';

class FavouriteProduct extends StatelessWidget {
  const FavouriteProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        title: const Text(
          'Favourite Product',
          style: TextStyle(
              fontSize: 16,
              color: Color(0xff223263),
              fontWeight: FontWeight.w700),
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
                      padding: const EdgeInsets.symmetric(horizontal: 12),
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
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.delete_outline_rounded,
                                size: 20,
                                color: Colors.grey,
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
                      padding: const EdgeInsets.symmetric(horizontal: 12),
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
                                  'assets/images/mega-image1.png',
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
                              Icon(
                                Icons.delete_outline_rounded,
                                size: 20,
                                color: Colors.grey,
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
                      padding: const EdgeInsets.symmetric(horizontal: 12),
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
                                  'assets/images/flash-image2.png',
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
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.delete_outline_rounded,
                                size: 20,
                                color: Colors.grey,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/flash-image1.png',
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
                              const Icon(
                                Icons.delete_outline_rounded,
                                size: 20,
                                color: Colors.grey,
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
