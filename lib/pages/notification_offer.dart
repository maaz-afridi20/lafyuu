import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNotificationOffer extends StatelessWidget {
  const MyNotificationOffer({Key? key}) : super(key: key);

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
          'Notifications',
          style: TextStyle(
            fontSize: 16,
            wordSpacing: 2,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
            color: Color(0xffEBF0FF),
          ),
          ListTile(
            leading: const Icon(
              CupertinoIcons.pencil,
              size: 20,
              color: Color(0xff40BFFF),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'The Best Title',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff223263),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
                SizedBox(height: 8),
                Text(
                  'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9098B1),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'April 30, 2014 1:01 PM',
                  style: TextStyle(fontSize: 10, color: Color(0xff223263)),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(
              CupertinoIcons.pencil,
              size: 20,
              color: Color(0xff40BFFF),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Summer Offer 98% CashBack',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff223263),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
                SizedBox(height: 8),
                Text(
                  'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor',
                  style: TextStyle(fontSize: 12, color: Color(0xff9098B1)),
                ),
                SizedBox(height: 6),
                Text(
                  'April 30, 2014 1:01 PM',
                  style: TextStyle(fontSize: 10, color: Color(0xff223263)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(
              CupertinoIcons.pencil,
              size: 20,
              color: Color(0xff40BFFF),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Special Offer 25% OFF',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff223263),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
                SizedBox(height: 8),
                Text(
                  'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                  style: TextStyle(fontSize: 12, color: Color(0xff9098B1)),
                ),
                SizedBox(height: 6),
                Text(
                  'April 30, 2014 1:01 PM',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xff223263),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
