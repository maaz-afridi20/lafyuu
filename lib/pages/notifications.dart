import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/pages/notification_activity.dart';
import 'package:lafyuu/pages/notification_feed.dart';
import 'package:lafyuu/pages/notification_offer.dart';

class MyNoticifactionsPage extends StatelessWidget {
  const MyNoticifactionsPage({Key? key}) : super(key: key);

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
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const MyNotificationOffer();
                },
              ));
            },
            child: const ListTile(
              leading: Icon(
                CupertinoIcons.pencil,
                size: 20,
                color: Color(0xff40BFFF),
              ),
              title: Text(
                'Offer',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              trailing: CircleAvatar(
                backgroundColor: Color(0xffFB7181),
                radius: 12,
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const MyNotificationFeed();
                },
              ));
            },
            child: const ListTile(
              leading: Icon(
                Icons.feed_outlined,
                size: 20,
                color: Color(0xff40BFFF),
              ),
              title: Text(
                'Feed',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              trailing: CircleAvatar(
                backgroundColor: Color(0xffFB7181),
                radius: 12,
                child: Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const MyNotificationActivity();
                },
              ));
            },
            child: const ListTile(
              leading: Icon(
                CupertinoIcons.bell_fill,
                size: 20,
                color: Color(0xff40BFFF),
              ),
              title: Text(
                'Activity',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              trailing: CircleAvatar(
                backgroundColor: Color(0xffFB7181),
                radius: 12,
                child: Center(
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
