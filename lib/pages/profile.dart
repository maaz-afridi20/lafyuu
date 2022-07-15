import 'package:flutter/material.dart';
import 'package:lafyuu/pages/birthday.dart';
import 'package:lafyuu/pages/change_gender.dart';
import 'package:lafyuu/pages/change_name.dart';
import 'package:lafyuu/pages/change_password.dart';
import 'package:lafyuu/pages/email.dart';
import 'package:lafyuu/pages/phone_number.dart';
import 'package:lafyuu/widgets/category_listTile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          'Profile',
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
          const Divider(thickness: 1),
          const SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const ChangeName();
                          },
                        ));
                      },
                      child: const Text(
                        'Maximus Gold',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff223263),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '@derlaxy',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ChangeGender();
                },
              ));
            },
            child: CategoryListTile(
              listimage: Image.asset(
                'assets/icons/male.png',
                width: 25,
                height: 25,
              ),
              myText: 'Gender',
              textColor: const Color(0xff223263),
              textFontweight: FontWeight.w700,
              trailingText: 'Male',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const BirthDay();
                },
              ));
            },
            child: CategoryListTile(
              listimage: Image.asset(
                'assets/icons/cake.png',
                width: 25,
                height: 25,
              ),
              myText: 'Bithday',
              textColor: const Color(0xff223263),
              textFontweight: FontWeight.w700,
              trailingText: '12-12-2020',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Email();
                },
              ));
            },
            child: CategoryListTile(
              listimage: Image.asset(
                'assets/icons/email.png',
                width: 25,
                height: 25,
              ),
              myText: 'Email',
              textColor: const Color(0xff223263),
              textFontweight: FontWeight.w700,
              trailingText: 'choopan@gull.com',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const PhoneNumber();
                },
              ));
            },
            child: CategoryListTile(
              listimage: Image.asset(
                'assets/icons/mobile.png',
                width: 25,
                height: 25,
              ),
              myText: 'Phone Number',
              textColor: const Color(0xff223263),
              textFontweight: FontWeight.w700,
              trailingText: '(307) 555-0133',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ChangePassword();
                },
              ));
            },
            child: CategoryListTile(
              listimage: Image.asset(
                'assets/icons/lock.png',
                width: 25,
                height: 25,
              ),
              myText: 'Change Password',
              textColor: const Color(0xff223263),
              textFontweight: FontWeight.w700,
              trailingText: '•••••••••••••••••••',
            ),
          ),
        ],
      ),
    );
  }
}
