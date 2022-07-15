import 'package:flutter/material.dart';

class MyNotificationFeed extends StatelessWidget {
  const MyNotificationFeed({Key? key}) : super(key: key);

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
          'Feed',
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
            leading: Image.asset(
              'assets/images/flash-image1.png',
              height: 48,
              width: 48,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'New Product',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff223263),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activit',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9098B1),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'June 3, 2015 5:06 PM',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xff223263),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Image.asset(
              'assets/images/recomended1.png',
              height: 48,
              width: 48,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Best Product',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff223263),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activit',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9098B1),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'June 3, 2015 5:06 PM',
                  style: TextStyle(fontSize: 10, color: Color(0xff223263)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Image.asset(
              'assets/images/flash-image3.png',
              height: 48,
              width: 48,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Most Viewed Product',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff223263),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activit',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9098B1),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'June 3, 2015 5:06 PM',
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
