import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/tracking_order_details_container.dart';

class TrackingOrder extends StatelessWidget {
  const TrackingOrder({Key? key}) : super(key: key);

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
          'Order Details',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(thickness: 1),
            TrackingOrderDetailsContainer(
              productImage: Image.asset(
                'assets/images/recomended1.png',
                width: 72,
                height: 72,
              ),
            ),
            const SizedBox(height: 8),
            TrackingOrderDetailsContainer(
              productImage: Image.asset(
                'assets/images/flash-image3.png',
                width: 72,
                height: 72,
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Shipping Details',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 201,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
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
                            children: [
                              Text(
                                ' Date Shipping',
                                style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  color:
                                      const Color(0xff223263).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                'January 16, 2015',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff223263),
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shipping',
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 12,
                                  color:
                                      const Color(0xff223263).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                'POS Reggular',
                                style: TextStyle(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'No. Resi',
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 12,
                                  color:
                                      const Color(0xff223263).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                '000192848573',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff223263),
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 12,
                                  color:
                                      const Color(0xff223263).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                ' 2727 Lakeshore Rd\nundefined Nampa,\nTennessee 78410',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff223263),
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Payment Details',
                    style: TextStyle(fontSize: 14, color: Color(0xff223263)),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 201,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
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
                            children: [
                              Text(
                                'Items (03)',
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 12,
                                  color:
                                      const Color(0xff223263).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                '\$598.86',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff223263),
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shipping',
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 12,
                                  color:
                                      const Color(0xff223263).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                '\$40',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff223263),
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Import Charges',
                                style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  color:
                                      const Color(0xff223263).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                '\$128',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff223263),
                                    letterSpacing: 0.5),
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
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Color(0xff223263),
                                ),
                              ),
                              Text(
                                '\$766.86',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xff40BFFF),
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            ButtonContainer(
              buttontext: 'Notify Me',
              buttoncolor: const Color(0xff40BFFF),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
