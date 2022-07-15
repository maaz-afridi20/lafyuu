import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/pages/tracking_order.dart';
import 'package:lafyuu/widgets/order_details.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

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
          'Order',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff223263),
          ),
        ),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const TrackingOrder();
                },
              ));
            },
            child: OrderDetails(
              orderId: 'LQNSU346JK',
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const TrackingOrder();
                  },
                ));
              },
              child: OrderDetails(orderId: 'SDG1345KJD')),
        ],
      ),
    );
  }
}
