import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final bool? myobsecure;
  final Icon myicon;
  final Color myiconcolor;
  final bool? myfilled;
  final String myhintext;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextFields(
      {this.myobsecure = false,
      required this.myicon,
      required this.myiconcolor,
      this.myfilled = false,
      required this.myhintext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Expanded(
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: _emailController,
          obscureText: myobsecure!,
          decoration: InputDecoration(
            filled: myfilled,
            hintText: myhintext,
            hintStyle: const TextStyle(
              fontSize: 12,
              color: Color(0xff9098B1),
            ),
            prefixIcon: myicon,
            iconColor: myiconcolor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
