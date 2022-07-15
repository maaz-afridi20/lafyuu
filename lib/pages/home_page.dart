import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/pages/notifications.dart';
import 'package:lafyuu/pages/product_detail.dart';
import 'package:lafyuu/widgets/product_offers.dart';
import 'package:lafyuu/widgets/stars.dart';
import 'package:lafyuu/widgets/super_flash_sale.dart';
import 'account.dart';
import 'cart.dart';
import 'explore.dart';
import 'new_offers.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  goToPages(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage2(),
    const Explore(),
    const YourCart(),
    const NewOffers(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: const Color(0xff40BFFF),
        unselectedItemColor: const Color(0xff9098B1),
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: goToPages,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.pencil), label: 'Offer'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_rounded,
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xff9098B1),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  color: Color(0xff40BFFF),
                ),
                SizedBox(width: 8),
                Text(
                  'Search product',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9098B1),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          const Icon(
            Icons.favorite_outline,
            color: Color(0xff9098B1),
            size: 25,
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const MyNoticifactionsPage();
                },
              ));
            },
            child: const Icon(
              Icons.notifications_none_sharp,
              color: Color(0xff9098B1),
              size: 25,
            ),
          ),
          const SizedBox(width: 10),
        ],
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
            const SizedBox(height: 16),
            // super flash sale page
            //
            const SuperFlashSale(),
            //
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                  Text(
                    'More Category',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff40BFFF),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: avatarSpecs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          radius: 30,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 35,
                            child: avatarSpecs[index]['image'],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        avatarSpecs[index]['text'],
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            //
            //
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Flash Sale',
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
            const SizedBox(height: 18),

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
                    padding: const EdgeInsets.symmetric(horizontal: 9),
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
                                vertical: 12,
                              ),
                              child: Container(
                                height: 110,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
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
                                    color: Color(0xff9098B1),
                                  ),
                                ),
                                Text(
                                  '24% OFF',
                                  style: TextStyle(
                                    fontSize: 10,
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
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Mega Sale',
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
            const SizedBox(height: 12),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: itemList2.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 150,
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
                                  borderRadius: BorderRadius.circular(10),
                                  child: itemList2[index]['image'],
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
                              itemList2[index]['price'],
                              style: const TextStyle(
                                fontSize: 12,
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
            const SizedBox(height: 9),
            //
            // product offers in main page
            //
            ProductOffers(
                mainText: 'Recommended\nProduct',
                mainFontSize: 23,
                smallText: 'We Recommended best for you',
                smallFontSize: 15,
                myFontWeight: FontWeight.w700),
            //
            //
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          const SizedBox(height: 4),
                          //
                          //
                          const Stars(),
                          //
                          //
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '\$543,99',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  color: Color(0xff9098B1),
                                ),
                              ),
                              Text(
                                '24% OFF',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w700),
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
                              letterSpacing: 0.5,
                              fontSize: 12,
                              color: Color(0xff223263),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            'React ENG',
                            style: TextStyle(
                              letterSpacing: 0.5,
                              fontSize: 12,
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
                                  letterSpacing: 0.5,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
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
                                        return const ProductDetails();
                                      },
                                    ));
                                  },
                                  child: Image.asset(
                                    'assets/images/flash-image3.png',
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
                          //
                          //
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
                                  color: Colors.red,
                                  letterSpacing: 0.5,
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
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}

List<dynamic> itemList2 = [
  {
    'image': Image.asset('assets/images/mega-image1.png'),
    'name': 'MS-Nike Air Max React...',
    'price': '\$270',
  },
  {
    'image': Image.asset('assets/images/image57.png'),
    'name': 'MS-Quilted Maxi Cros...',
    'price': '\$270',
  },
  {
    'image': Image.asset('assets/images/mega-image2.png'),
    'name': 'MS-Nike Air Max React...',
    'price': '\$270',
  },
  {
    'image': Image.asset('assets/images/mega-image3.png'),
    'name': 'MS-Nike Air Max React...',
    'price': '\$270',
  },
  {
    'image': Image.asset('assets/images/rectangle44.png'),
    'name': 'MS-Nike Air Max React...',
    'price': '\$270',
  },
];

List<dynamic> itemList = [
  {
    'image': Image.asset(
      'assets/images/flash-image1.png',
      height: 100,
      width: 100,
    ),
    'name': 'FS-Nike Air Max React...',
    'price': '\$270',
  },
  {
    'image':
        Image.asset('assets/images/flash-image2.png', height: 100, width: 100),
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
