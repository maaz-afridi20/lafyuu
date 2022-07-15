import 'package:flutter/material.dart';
import 'package:lafyuu/pages/product_not_found.dart';
import 'package:lafyuu/pages/sort_by.dart';
import 'package:lafyuu/widgets/stars.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

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
              color: const Color(0xff40BFFF),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color(0xff40BFFF),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Nike Air Max',
                      style: TextStyle(
                          color: const Color(0xff223263).withOpacity(0.5)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const SortBy();
                },
              ));
            },
            child: const Icon(
              Icons.format_align_center_outlined,
              color: Color(0xff9098B1),
              size: 28,
            ),
          ),
          const SizedBox(width: 6),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ProductNotFound();
                },
              ));
            },
            child: const Icon(
              Icons.filter_alt_outlined,
              color: Color(0xff40BFFF),
              size: 28,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Divider(
              thickness: 1,
              color: Color(0xffEBF0FF),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '145 Results',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff223263).withOpacity(0.5)),
                  ),
                  Text(
                    'Man Shoes',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff223263).withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.2)),
                          color: Colors.white.withOpacity(0.3)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    myitemList[index]['image'],
                                    height: 133,
                                    width: 133,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Nike Air Max 270',
                              style: TextStyle(
                                color: Color(0xff223263),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Stars(),
                            const SizedBox(height: 16),
                            const Text(
                              '\$299,433',
                              style: TextStyle(
                                color: Color(0xff40BFFF),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: const [
                                Text(
                                  '534,11',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff9098B1),
                                      decoration: TextDecoration.lineThrough),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '24% OFF',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFB7181),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<dynamic> myitemList = [
  {
    'image': 'assets/images/flash-image3.png',
  },
  {
    'image': 'assets/images/flash-image1.png',
  },
  {
    'image': 'assets/images/recomended1.png',
  },
  {
    'image': 'assets/images/rectangle44.png',
  },
  {
    'image': 'assets/images/flash-image3.png',
  },
  {
    'image': 'assets/images/mega-image2.png',
  },
];
