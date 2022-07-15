import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/stars.dart';

class WriteReview extends StatelessWidget {
  const WriteReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0.0,
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
          'Write Review',
          style: TextStyle(
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              const Text(
                'Please write Overall level of satisfaction with your shipping / Delivery Service',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: Color(0xff223263),
                ),
              ),
              const SizedBox(height: 16),
              //
              // Stars Widget
              //
              const Stars(),
              const SizedBox(height: 24),
              const Text(
                'Write Your Review',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    color: Color(0xff223263)),
              ),
              const SizedBox(height: 12),
              TextField(
                maxLines: 10,
                minLines: 1,
                decoration: InputDecoration(
                  hintText: 'Enter your review here',
                  hintStyle: const TextStyle(
                      letterSpacing: 0.5,
                      color: Color(0xff9098B1),
                      fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Add Photo',
                style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff223263)),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/image57.png',
                      width: 72,
                      height: 72,
                    ),
                  ),
                  const SizedBox(width: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/rectangle44.png',
                      width: 72,
                      height: 72,
                    ),
                  ),
                  const SizedBox(width: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/rectangle55.png',
                      width: 72,
                      height: 72,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color(0xffEBF0FF),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.add,
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
