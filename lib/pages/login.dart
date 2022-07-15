import 'package:flutter/material.dart';
import 'package:lafyuu/pages/registration_form.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/textfields.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/vector2.png',
                  height: 70,
                  width: 70,
                ),
                const SizedBox(height: 21),
                const Text(
                  'Welcome to Lafyuu',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9098B1),
                  ),
                ),
                const SizedBox(height: 28),
                TextFields(
                  myicon: const Icon(Icons.email_outlined),
                  myiconcolor: Colors.black,
                  myhintext: "Your Email",
                ),
                const SizedBox(height: 12),
                TextFields(
                  myicon: const Icon(Icons.lock),
                  myiconcolor: Colors.cyan,
                  myhintext: "Password",
                  myobsecure: true,
                ),
                const SizedBox(height: 18),
                ButtonContainer(
                  buttontext: 'Sign In',
                  buttontextsize: 14,
                  buttontextweight: FontWeight.w700,
                  buttoncolor: const Color(0xff40BFFF),
                  buttontextcolor: Colors.white,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: const Divider(
                            thickness: 1,
                            endIndent: 15,
                            color: Color(0xffEBF0FF),
                          ),
                        ),
                      ),
                      const Text(
                        "OR",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff9098B1),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: const Divider(
                            indent: 15,
                            thickness: 1,
                            color: Color(0xffEBF0FF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 58,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/icons/google.png',
                          width: 25,
                          height: 25,
                        ),
                        const Text(
                          'Login with google',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff9098B1),
                          ),
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 58,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.facebook,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Text(
                          'Login with facebook',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9098B1),
                          ),
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff40BFFF),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have account? ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff9098B1),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const RegistrationForm();
                          },
                        ));
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
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
      ),
    );
  }
}
