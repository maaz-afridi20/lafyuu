import 'package:flutter/material.dart';
import 'package:lafyuu/pages/filter_search.dart';
import 'package:lafyuu/pages/list_category.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';

class ProductNotFound extends StatelessWidget {
  const ProductNotFound({Key? key}) : super(key: key);

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
                  children: const [
                    Icon(
                      Icons.search,
                      color: Color(0xff40BFFF),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Search Product',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          const Icon(
            Icons.format_align_center_outlined,
            color: Color(0xff9098B1),
            size: 28,
          ),
          const SizedBox(width: 6),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const FilterSearch();
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
      body: Column(
        children: [
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('0 Result'),
                Row(
                  children: [
                    const Text(
                      'Man Shoes',
                      style: TextStyle(
                        color: Color(0xff223263),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const ListCategory();
                          },
                        ));
                      },
                      child: const Icon(Icons.arrow_drop_down_rounded),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    color: const Color(0xff40BFFF).withOpacity(0.5),
                    spreadRadius: 3)
              ],
            ),
            child: const CircleAvatar(
              backgroundColor: Color(0xff40BFFF),
              radius: 40.0,
              child: Center(
                child: Icon(
                  Icons.cancel_outlined,
                  color: Colors.white,
                  size: 45,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Product Not Found',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff223263)),
          ),
          const SizedBox(height: 8),
          const Text(
            'Thank you for shopping using lafyuu',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff9098B1),
            ),
          ),
          const SizedBox(height: 16),
          ButtonContainer(
              buttontext: 'Back to home',
              buttontextsize: 12,
              buttoncolor: const Color(0xff40BFFF),
              buttontextweight: FontWeight.w700)
        ],
      ),
    );
  }
}
