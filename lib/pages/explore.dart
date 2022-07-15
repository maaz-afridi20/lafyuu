import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/pages/home_page.dart';
import 'package:lafyuu/pages/search.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
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
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MySearch();
                  },
                ));
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Color(0xff40BFFF),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Search product',
                    style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_outline,
            color: Color(0xff9098B1),
            size: 30,
          ),
          SizedBox(width: 8),
          Icon(
            Icons.notifications_none_sharp,
            color: Color(0xff9098B1),
            size: 30,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                'Man Fashion',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: manFashion.length,
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
                              radius: 28,
                              child: manFashion[index]['image'],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          manFashion[index]['text'],
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: manFashion2.length,
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
                              radius: 28,
                              child: manFashion2[index]['image'],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          manFashion2[index]['text'],
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              const Text(
                'Women Fashion',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              //
              //
              const SizedBox(height: 16),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: womenFashon.length,
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
                              radius: 28,
                              child: womenFashon[index]['image'],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          womenFashon[index]['text'],
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: womenFashon2.length,
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
                              radius: 28,
                              child: womenFashon2[index]['image'],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          womenFashon2[index]['text'],
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<dynamic> manFashion = [
  {
    'image': Image.asset(
      'assets/icons/shirt.png',
    ),
    'text': 'Man Shirt',
  },
  {
    'image': Image.asset(
      'assets/icons/man-bag.png',
    ),
    'text': 'Man Work',
  },
  {
    'image': Image.asset(
      'assets/icons/Tshirt.png',
    ),
    'text': 'Tshirt',
  },
  {
    'image': Image.asset(
      'assets/icons/man-shoes.png',
    ),
    'text': 'Man Shoes',
  },
];

List<dynamic> manFashion2 = [
  {
    'image': Image.asset(
      'assets/icons/man-underwear.png',
    ),
    'text': 'Underwear',
  },
  {
    'image': Image.asset(
      'assets/icons/man-pants.png',
    ),
    'text': 'Man pants',
  },
];

List<dynamic> womenFashon = [
  {
    'image': Image.asset(
      'assets/icons/dress.png',
    ),
    'text': 'Dress',
  },
  {
    'image': Image.asset(
      'assets/icons/woman-tshirt.png',
    ),
    'text': ' tshirt',
  },
  {
    'image': Image.asset(
      'assets/icons/woman-pants.png',
    ),
    'text': 'Woman Pants',
  },
  {
    'image': Image.asset(
      'assets/icons/skirt.png',
    ),
    'text': 'Skirt',
  },
];

List<dynamic> womenFashon2 = [
  {
    'image': Image.asset(
      'assets/icons/woman-bag.png',
    ),
    'text': 'Bag',
  },
  {
    'image': Image.asset(
      'assets/icons/woman-shoes.png',
    ),
    'text': ' Heels',
  },
  {
    'image': Image.asset(
      'assets/icons/bikini.png',
    ),
    'text': 'Bikini',
  },
];
