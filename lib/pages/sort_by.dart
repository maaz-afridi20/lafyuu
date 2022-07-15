import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/category_listTile.dart';

class SortBy extends StatelessWidget {
  const SortBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sort by',
          style: TextStyle(
            color: Color(0xff223263),
            fontSize: 16,
          ),
        ),
        backgroundColor: const Color(0xfffafafa),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
          ),
          CategoryListTile(
            myText: 'Best Match',
            textColor: const Color(0xff40BFFF),
          ),
          CategoryListTile(
            myText: 'Time: ending soonset',
            textColor: const Color(0xff223263),
          ),
          CategoryListTile(
            myText: 'Time: newly listed',
            textColor: const Color(0xff223263),
          ),
          CategoryListTile(
            myText: 'Price + Shipping: lowest first',
            textColor: const Color(0xff223263),
          ),
          CategoryListTile(
            myText: 'Price + Shipping: highest first',
            textColor: const Color(0xff223263),
          ),
          CategoryListTile(
            myText: 'Distance: nearest first',
            textColor: const Color(0xff223263),
          ),
        ],
      ),
    );
  }
}
