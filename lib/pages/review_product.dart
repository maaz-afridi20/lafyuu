import 'package:flutter/material.dart';
import 'package:lafyuu/pages/write_review.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/review_stars.dart';
import 'package:lafyuu/widgets/stars.dart';

class ReviewProduct extends StatelessWidget {
  const ReviewProduct({Key? key}) : super(key: key);

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
          '5 Review',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
            color: Color(0xff223263),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              thickness: 1,
              color: Color(0xffEBF0FF),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(64, 191, 255, 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'All Reviews',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff40BFFF),
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ReviewStart(containerText: '1'),
                    const SizedBox(width: 16),
                    ReviewStart(containerText: '2'),
                    const SizedBox(width: 16),
                    ReviewStart(containerText: '3'),
                    const SizedBox(width: 16),
                    ReviewStart(containerText: '4'),
                    const SizedBox(width: 16),
                    ReviewStart(containerText: '5'),
                    //
                    //
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '  Console Exert',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff223263),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Stars(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 12,
                    color: Color(0xff9098B1),
                    letterSpacing: 0.5),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    width: 82,
                    height: 82,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/images/rectangle44.png'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 82,
                    height: 82,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset(
                        'assets/images/rectangle55.png',
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 82,
                    height: 82,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/images/image57.png'),
                    ),
                  ),
                ],
              ),
            ),
            //
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'December 10, 2020',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile2.png'),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '  Mateeza Girl',
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff223263)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Stars(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'This is very amazing i like the design of the product and it is very cheap',
                style: TextStyle(
                    fontSize: 12, color: Color(0xff9098B1), letterSpacing: 0.5),
              ),
            ),
            //
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'December 10, 2020',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile3.png'),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '  Choopan Gul',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff223263)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Stars(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            //
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'December 10, 2020',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile4.png'),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '  Hinkowala',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                            color: Color(0xff223263)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Stars(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/image57.png',
                      height: 72,
                      width: 72,
                    ),
                  ),
                  const SizedBox(width: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/rectangle44.png',
                      height: 72,
                      width: 72,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'December 10,2020',
                style: TextStyle(fontSize: 10, color: Color(0xff9098B1)),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const WriteReview();
                  },
                ));
              },
              child: ButtonContainer(
                buttontext: 'Write Review',
                buttoncolor: const Color(0xff40BFFF),
                buttontextsize: 14,
                buttontextweight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
