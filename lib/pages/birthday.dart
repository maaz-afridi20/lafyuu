import 'package:flutter/material.dart';

import '../widgets/account_changes_textfields.dart';
import '../widgets/buttoncontainer.dart';

class BirthDay extends StatelessWidget {
  const BirthDay({Key? key}) : super(key: key);

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
          'BirthDay',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(thickness: 1),
            const Text(
              'Your Birthday',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            AccountChangesTextfields(
              myHintText: '12/12/2020',
              myIcon: const Icon(
                Icons.calendar_month,
                color: Color(0xff9098B1),
              ),
            ),
            const Spacer(),
            ButtonContainer(
                buttontext: 'Save', buttoncolor: const Color(0xff40BFFF)),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
