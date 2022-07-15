import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/pages/ship_to.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/cart_containers.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class YourCart extends StatefulWidget {
  const YourCart({Key? key}) : super(key: key);

  @override
  State<YourCart> createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Your Cart',
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                thickness: 1,
              ),
              CartContainers(
                productImage: Image.asset(
                  'assets/images/flash-image1.png',
                  width: 72,
                  height: 72,
                ),
              ),
              const SizedBox(height: 16),
              CartContainers(
                productImage: Image.asset(
                  'assets/images/flash-image3.png',
                  width: 72,
                  height: 72,
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                cursorColor: const Color(0xff9098B1),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                  hintText: 'Enter Coupon Code',
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff9098B1),
                  ),
                  suffixIcon: MaterialButton(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    height: 58,
                    color: const Color(0xff40BFFF),
                    onPressed: () {},
                    child: const Text(
                      'Apply',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 164,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xfffafafa),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xffEBF0FF),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Items (3)',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9098B1),
                            ),
                          ),
                          Text(
                            '\$598.6',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff223263),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Shipping',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9098B1),
                            ),
                          ),
                          Text(
                            '\$40.00',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff223263),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Import Charges',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9098B1),
                            ),
                          ),
                          Text(
                            '\$128.00',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff223263),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: DottedDecoration(
                          strokeWidth: 2,
                          color: const Color(0xffEBF0FF),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total Price',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff9098B1),
                            ),
                          ),
                          Text(
                            '\$766.88',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff40BFFF),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ShipTo();
                    },
                  ));
                },
                child: ButtonContainer(
                  buttontext: 'Check Out',
                  buttoncolor: const Color(0xff40BFFF),
                  buttontextsize: 14,
                  buttontextweight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
