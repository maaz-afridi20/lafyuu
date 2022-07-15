import 'package:flutter/material.dart';
import '../widgets/account_changes_textfields.dart';
import '../widgets/buttoncontainer.dart';

class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

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
          'Email',
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
              'Change Email',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff223263),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            AccountChangesTextfields(
              myPrefix: const Icon(
                Icons.email_outlined,
                color: Color(0xff9098B1),
                size: 20,
              ),
              myHintText: 'Choopan@gull.com',
              myFontsize: 12,
            ),
            const SizedBox(height: 8),
            const Text(
              'We Will Send verification to your New Email',
              style: TextStyle(
                color: Color(0xff40BFFF),
                fontSize: 12,
              ),
            ),
            const Spacer(),
            ButtonContainer(
                buttontext: 'Change Email',
                buttoncolor: const Color(0xff40BFFF)),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
