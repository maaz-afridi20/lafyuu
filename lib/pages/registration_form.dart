import 'package:flutter/material.dart';
import 'package:lafyuu/pages/home_page.dart';
import 'package:lafyuu/pages/login.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/textfields.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/vector2.png',
                height: 72,
                width: 72,
              ),
              const SizedBox(height: 16),
              const Text(
                'Let\'s get started',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Create a new account',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff9098B1),
                ),
              ),
              const SizedBox(height: 28),
              TextFields(
                  myicon: const Icon(Icons.person_outline_rounded),
                  myiconcolor: const Color(0xff40BFFF),
                  myhintext: 'Full Name'),
              const SizedBox(height: 8),
              TextFields(
                  myicon: const Icon(Icons.email_outlined),
                  myiconcolor: const Color(0xff40BFFF),
                  myhintext: 'Your Email'),
              const SizedBox(height: 8),
              TextFields(
                myicon: const Icon(Icons.lock_outline_rounded),
                myiconcolor: const Color(0xff40BFFF),
                myhintext: 'Your Password',
                myobsecure: true,
              ),
              const SizedBox(height: 8),
              TextFields(
                myicon: const Icon(Icons.lock_outline_rounded),
                myiconcolor: const Color(0xff40BFFF),
                myhintext: 'Password Again',
                myobsecure: true,
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ));
                },
                child: ButtonContainer(
                  buttontext: 'Sign Up',
                  buttoncolor: const Color(0xff40BFFF),
                  buttontextsize: 14,
                  buttontextweight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'have account?',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff9098B1),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Login();
                        },
                      ));
                    },
                    child: const Text(
                      ' Sign in',
                      style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 14,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
