import 'package:flutter/material.dart';
import 'package:lafyuu/pages/review_product.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/size_circle_avatar.dart';
import 'package:lafyuu/widgets/stars.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0.0,
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
          'Nike Air Max 270 ...',
          style: TextStyle(
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
            color: Color(0xff223263),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/flash-image3.png',
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Nike Air Zoom Pegasus 36 Miami',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: Color(0xff223263),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Stars(),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                '\$299,43',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: Color(0xff40BFFF),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Select Size',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff223263),
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: avatarslist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizeCircleAvatar(
                        mytext: avatarslist[index]['text'],
                        mybackgroundColor: Color(0xffEBF0FF),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Select Color',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff223263),
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: avatarslist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizeCircleAvatar(
                        secondbackgroundColor: avatarslist[index]['bgcolor'],
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Specification',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff223263),
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Shown :',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff223263),
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Laser',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff9098B1),
                        ),
                      ),
                      Text(
                        'Blue/Anthracite\nWatermelon',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff9098B1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Style',
                    style: TextStyle(
                        fontSize: 12,
                        letterSpacing: 0.5,
                        color: Color(0xff223263),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'CD0113-400',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff9098B1),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 12,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Review Product',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      color: Color(0xff223263),
                    ),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      color: Color(0xff40BFFF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: const [
                  Stars(),
                  SizedBox(width: 8),
                  Text(
                    '4.5',
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 0.5,
                      color: Color(0xff9098B1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    '(5 Review)',
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 0.5,
                      color: Color(0xff9098B1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const ReviewProduct();
                        },
                      ));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '  Console Exert',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff223263),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Stars(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            //
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 12,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    width: 82,
                    height: 82,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/images/rectangle44.png'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 82,
                    height: 82,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset(
                        'assets/images/rectangle55.png',
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 82,
                    height: 82,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/images/image57.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            //
            //
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'December 10, 2020',
                style: TextStyle(
                  fontSize: 10,
                  letterSpacing: 0.5,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            const SizedBox(height: 23),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'You Might Also Like',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: Color(0xff223263),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 210,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: itemList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 240,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffEBF0FF),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 12,
                              ),
                              child: Container(
                                height: 110,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: itemList[index]['image'],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                itemList[index]['name'],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff223263),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              itemList[index]['price'],
                              style: const TextStyle(
                                fontSize: 12,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff40BFFF),
                              ),
                            ),
                            const SizedBox(height: 8),
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
                                    fontWeight: FontWeight.w700,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ButtonContainer(
              buttontext: 'Add To Cart',
              buttontextcolor: Colors.white,
              buttoncolor: Color(0xff40BFFF),
              buttontextsize: 18,
              buttontextweight: FontWeight.bold,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

List<dynamic> avatarslist = [
  {
    'text': '6',
    'bgcolor': Color(0xff40BFFF),
  },
  {
    'text': '6.5',
    'bgcolor': Color(0xffFB7181),
  },
  {
    'text': '7',
    'bgcolor': Color(0xff53D1B6),
  },
  {
    'text': '7.5',
    'bgcolor': Color(0xff5C61F4),
  },
  {
    'text': '8',
    'bgcolor': Color(0xff223263),
  },
  {
    'text': '8.5',
    'bgcolor': Color(0xff53D1B6),
  },
  {
    'text': '9',
    'bgcolor': Color(0xffFB7181),
  },
];

List<dynamic> itemList = [
  {
    'image': Image.asset('assets/images/flash-image1.png'),
    'name': 'FS-Nike Air Max React...',
    'price': '\$270',
  },
  {
    'image': Image.asset('assets/images/flash-image2.png'),
    'name': 'FS-Quilted Maxi Cros...',
    'price': '\$270',
  },
  {
    'image': Image.asset('assets/images/flash-image3.png'),
    'name': 'Nike Air Max 270 React...',
    'price': '\$270',
  },
  {
    'image': Image.asset('assets/images/recomended1.png'),
    'name': 'Nike Air Max 270 React...',
    'price': '\$270',
  },
  {
    'image': Image.asset('assets/images/recomended3.png'),
    'name': 'Nike Air Max 270 React...',
    'price': '\$270',
  },
];

List<dynamic> avatarSpecs = [
  {
    'image': Image.asset(
      'assets/icons/shirt.png',
    ),
    'text': 'Man Shirt',
  },
  {
    'image': Image.asset(
      'assets/icons/dress.png',
    ),
    'text': 'Dress',
  },
  {
    'image': Image.asset(
      'assets/icons/man-bag.png',
    ),
    'text': 'Man work\nequipment',
  },
  {
    'image': Image.asset(
      'assets/icons/woman-bag.png',
    ),
    'text': 'Woman Bag',
  },
  {
    'image': Image.asset(
      'assets/icons/Tshirt.png',
    ),
    'text': 'T shirt',
  },
];
