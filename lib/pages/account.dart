import 'package:flutter/material.dart';
import 'package:lafyuu/pages/address.dart';
import 'package:lafyuu/pages/order.dart';
import 'package:lafyuu/pages/profile.dart';
import 'package:lafyuu/widgets/category_listTile.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Account',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Profile();
                },
              ));
            },
            child: CategoryListTile(
              listimage: Image.asset(
                'assets/icons/user.png',
                width: 30,
                height: 30,
              ),
              myText: 'Profile',
              textColor: const Color(0xff223263),
              textFontweight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Order();
                },
              ));
            },
            child: CategoryListTile(
              listimage: Image.asset(
                'assets/icons/man-bag.png',
                width: 30,
                height: 30,
              ),
              myText: 'Order',
              textColor: const Color(0xff223263),
              textFontweight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Address();
                },
              ));
            },
            child: CategoryListTile(
              listimage: Image.asset(
                'assets/icons/location.png',
                width: 30,
                height: 30,
              ),
              myText: 'Address',
              textColor: const Color(0xff223263),
              textFontweight: FontWeight.w700,
            ),
          ),
          CategoryListTile(
            listimage: Image.asset(
              'assets/icons/bag.png',
              width: 30,
              height: 30,
            ),
            myText: 'Payment',
            textColor: const Color(0xff223263),
            textFontweight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
