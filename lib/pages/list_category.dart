import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/category_listTile.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.grey)),
        title: const Text(
          'Category',
          style: TextStyle(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Divider(
              thickness: 1,
            ),
            CategoryListTile(
              myText: 'Shirt',
              listimage: Image.asset('assets/icons/shirt.png'),
            ),
            CategoryListTile(
              myText: 'Dress',
              listimage: Image.asset('assets/icons/dress.png'),
            ),
            CategoryListTile(
              myText: 'Bikini',
              listimage: Image.asset('assets/icons/bikini.png'),
            ),
            CategoryListTile(
              myText: 'Work Equipment',
              listimage: Image.asset('assets/icons/man-bag.png'),
            ),
            CategoryListTile(
              myText: 'Man Pants',
              listimage: Image.asset('assets/icons/man-pants.png'),
            ),
            CategoryListTile(
              myText: 'Man Shoes',
              listimage: Image.asset('assets/icons/man-shoes.png'),
            ),
            CategoryListTile(
              myText: 'Man Underwear',
              listimage: Image.asset('assets/icons/man-underwear.png'),
            ),
            CategoryListTile(
              myText: 'Man T-shirt',
              listimage: Image.asset('assets/icons/Tshirt.png'),
            ),
            CategoryListTile(
              myText: 'Woman Bag',
              listimage: Image.asset('assets/icons/woman-bag.png'),
            ),
            CategoryListTile(
              myText: 'Woman Pants',
              listimage: Image.asset('assets/icons/woman-pants.png'),
            ),
            CategoryListTile(
              myText: 'High Heels',
              listimage: Image.asset('assets/icons/woman-shoes.png'),
            ),
            CategoryListTile(
              myText: 'Woman T-shirt',
              listimage: Image.asset('assets/icons/woman-tshirt.png'),
            ),
            CategoryListTile(
              myText: 'Skirt',
              listimage: Image.asset('assets/icons/skirt.png'),
            ),
          ],
        ),
      ),
    );
  }
}
