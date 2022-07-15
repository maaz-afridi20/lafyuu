import 'package:flutter/material.dart';
import 'package:lafyuu/widgets/buttoncontainer.dart';
import 'package:lafyuu/widgets/condition_container.dart';

class FilterSearch extends StatelessWidget {
  const FilterSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.cancel_sharp,
          size: 28,
          color: Color(0xff9098B1),
        ),
        elevation: 0,
        backgroundColor: const Color(0xfffafafa),
        title: const Text(
          'Filter Search',
          style: TextStyle(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(thickness: 1),
                const SizedBox(height: 16),
                const Text(
                  'Price range',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff223263),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6.5),
                        child: TextFormField(
                          onFieldSubmitted: (value) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              backgroundColor: Color(0xff40BFFF),
                              content: Text("You submitted your text"),
                              duration: Duration(seconds: 3),
                            ));
                          },
                          decoration: InputDecoration(
                            hintText: '1.234',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color(0xff9098B1)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.5),
                        child: TextFormField(
                          onFieldSubmitted: (value) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              backgroundColor: Color(0xff40BFFF),
                              content: Text("You submitted your text"),
                              duration: Duration(seconds: 3),
                            ));
                          },
                          decoration: InputDecoration(
                            hintText: '9.344',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color(0xff9098B1)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Divider(
                          color: Color(0xffEBF0FF),
                          thickness: 3,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xff40BFFF),
                    ),
                    Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Divider(
                          color: Color(0xff40BFFF),
                          thickness: 3,
                        ),
                      ),
                    ),
                    Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Divider(
                          color: Color(0xff40BFFF),
                          thickness: 3,
                        ),
                      ),
                    ),
                    Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Divider(
                          color: Color(0xff40BFFF),
                          thickness: 3,
                        ),
                      ),
                    ),
                    Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Divider(
                          color: Color(0xff40BFFF),
                          thickness: 3,
                        ),
                      ),
                    ),
                    Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Divider(
                          color: Color(0xff40BFFF),
                          thickness: 3,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xff40BFFF),
                    ),
                    Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Divider(
                          color: Color(0xffEBF0FF),
                          thickness: 3,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Min',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff9098B1),
                      ),
                    ),
                    Text(
                      'Max',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Conditon',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff223263),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'New',
                      containerWidth: 60,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                        containerBackgroungColor:
                            const Color.fromRGBO(64, 191, 255, 0.1),
                        containerText: 'Used',
                        containerTextColor: const Color(0xff40BFFF),
                        containerWidth: 120),
                    const SizedBox(width: 8),
                    ConditionContainer(
                        containerBackgroungColor:
                            const Color.fromRGBO(64, 191, 255, 0.1),
                        containerText: 'Not specified',
                        containerTextColor: const Color(0xff40BFFF),
                        containerWidth: 120),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Buying Format',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff223263),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'All Listing',
                      containerWidth: 110,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                        containerBackgroungColor:
                            const Color.fromRGBO(64, 191, 255, 0.1),
                        containerText: 'Accept Offers',
                        containerTextColor: const Color(0xff40BFFF),
                        containerWidth: 120),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Auction',
                      containerWidth: 80,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Buy It Now',
                      containerWidth: 105,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Accept Offers',
                      containerWidth: 115,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Item Location',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263)),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Us Only',
                      containerWidth: 80,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor:
                          const Color.fromRGBO(64, 191, 255, 0.1),
                      containerText: 'North America',
                      containerTextColor: const Color(0xff40BFFF),
                      containerWidth: 129,
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Europe',
                      containerWidth: 80,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                ConditionContainer(
                  containerBackgroungColor: Colors.transparent,
                  containerText: 'Asia',
                  containerWidth: 60,
                  containerTextColor: const Color(0xff9098B1),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Show Only',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263)),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Free Returns',
                      containerWidth: 100,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor:
                          const Color.fromRGBO(64, 191, 255, 0.1),
                      containerText: 'Return Accepted',
                      containerTextColor: const Color(0xff40BFFF),
                      containerWidth: 129,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Authorized Seller',
                      containerWidth: 130,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Completed Items',
                      containerTextColor: const Color(0xff9098B1),
                      containerWidth: 129,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor:
                          const Color.fromRGBO(64, 191, 255, 0.1),
                      containerText: 'Sold Items',
                      containerTextColor: const Color(0xff40BFFF),
                      containerWidth: 99,
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Deals And Savings',
                      containerTextColor: const Color(0xff9098B1),
                      containerWidth: 140,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Sale Items',
                      containerWidth: 100,
                      containerTextColor: const Color(0xff9098B1),
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Listed as lots',
                      containerTextColor: const Color(0xff9098B1),
                      containerWidth: 125,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ConditionContainer(
                      containerBackgroungColor:
                          const Color.fromRGBO(64, 191, 255, 0.1),
                      containerText: 'Search In Discription',
                      containerTextColor: const Color(0xff40BFFF),
                      containerWidth: 149,
                    ),
                    const SizedBox(width: 8),
                    ConditionContainer(
                      containerBackgroungColor: Colors.transparent,
                      containerText: 'Benefits Charity',
                      containerTextColor: const Color(0xff9098B1),
                      containerWidth: 125,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ConditionContainer(
                  containerBackgroungColor: Colors.transparent,
                  containerText: 'Authenticity Verified',
                  containerTextColor: const Color(0xff9098B1),
                  containerWidth: 145,
                ),
                const SizedBox(height: 18),
                ButtonContainer(
                  buttontext: 'Apply',
                  buttoncolor: const Color(0xff40BFFF),
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
