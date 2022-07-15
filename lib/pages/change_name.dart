import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/account_changes_textfields.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({Key? key}) : super(key: key);

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
          'Name',
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
              'First Name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            AccountChangesTextfields(myHintText: 'Gold'),
            const SizedBox(height: 24),
            const Text(
              'Last Name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            AccountChangesTextfields(myHintText: 'Smith'),
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
