import 'package:flutter/material.dart';
import 'package:lafyuu/pages/delete_address.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import '../widgets/address_textfields.dart';

class EditAddress extends StatelessWidget {
  const EditAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff9098B1),
        ),
        title: const Text(
          'Address',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Divider(thickness: 1),
            AddrssTextFields(
              askingText: 'Country or Region',
              myHintText: 'United States',
              myIcon: const Icon(Icons.arrow_drop_down),
            ),
            AddrssTextFields(askingText: 'First Name'),
            AddrssTextFields(askingText: 'Last Name'),
            AddrssTextFields(askingText: 'Street Address'),
            AddrssTextFields(askingText: 'Street Address 2 (optional))'),
            AddrssTextFields(askingText: 'City'),
            AddrssTextFields(askingText: 'State/Province/Region'),
            AddrssTextFields(askingText: 'Zip Code'),
            AddrssTextFields(askingText: 'Phone Number'),
            const SizedBox(height: 20),
            ButtonContainer(
              buttontext: 'Save Address',
              buttoncolor: const Color(0xff40BFFF),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const DeleteAddress();
                  },
                ));
              },
              child: ButtonContainer(
                buttontext: 'Delete Address',
                buttoncolor: const Color(0xff40BFFF),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
