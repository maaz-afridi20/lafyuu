import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/account_changes_textfields.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';

class ChangeGender extends StatefulWidget {
  const ChangeGender({Key? key}) : super(key: key);

  @override
  State<ChangeGender> createState() => _ChangeGenderState();
}

class _ChangeGenderState extends State<ChangeGender> {
  final items = ['Male', 'Female', 'Other'];
  String ValueChoose = '';
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
          'Gender',
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
              'Choose Gender',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            AccountChangesTextfields(
              myHintText: 'Male',
              myFontsize: 12,
              myIcon: const Icon(Icons.arrow_drop_down),
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
