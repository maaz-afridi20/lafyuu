import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';

class DeleteAddress extends StatelessWidget {
  const DeleteAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Center(
              child: PhysicalModel(
                elevation: 16,
                color: const Color(0xff40BFFF),
                shape: BoxShape.circle,
                child: CircleAvatar(
                  backgroundColor: const Color(0xffFB7181),
                  radius: 40,
                  child: Center(
                    child: Image.asset(
                      'assets/icons/exclamation.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Confirmation',
            style: TextStyle(
              fontSize: 24,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w700,
              color: Color(0xff223263),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Are you sure wanna delete address',
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w700,
              color: const Color(0xff223263).withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 16),
          ButtonContainer(
            buttontext: 'Delete',
            buttoncolor: const Color(0xff40BFFF),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffEBF0FF),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xff9098B1)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
