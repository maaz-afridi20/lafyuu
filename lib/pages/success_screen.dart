import 'package:flutter/material.dart';
import 'package:lafyuu/pages/offer_page.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: PhysicalModel(
              elevation: 16,
              color: Color(0xff40BFFF),
              shape: BoxShape.circle,
              child: CircleAvatar(
                backgroundColor: Color(0xff40BFFF),
                radius: 40,
                child: Center(
                  child: Icon(
                    Icons.check_rounded,
                    size: 40,
                    color: Color(0xfffafafa),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Success',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff223263),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'thank you for shopping using lafyuu',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: const Color(0xff223263).withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const OfferPage();
                },
              ));
            },
            child: ButtonContainer(
              buttontext: 'Back To Order',
              buttoncolor: const Color(0xff40BFFF),
            ),
          ),
        ],
      ),
    );
  }
}
