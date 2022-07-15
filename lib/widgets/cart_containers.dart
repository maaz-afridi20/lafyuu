import 'package:flutter/material.dart';

class CartContainers extends StatefulWidget {
  Image productImage;
  Icon? myIcon;
  CartContainers({required this.productImage, this.myIcon});

  @override
  State<CartContainers> createState() => _CartContainersState();
}

class _CartContainersState extends State<CartContainers> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 114,
      decoration: BoxDecoration(
        color: const Color(0xfffafafa),
        border: Border.all(
          width: 1,
          color: Colors.grey.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            widget.productImage,
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Nike Air Zoom Pegasus\n36 Miami',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff223263)),
                    ),
                    const SizedBox(width: 20),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                click = !click;
                              });
                            },
                            child: click
                                ? const Icon(
                                    Icons.favorite,
                                    color: Color(0xffFB7181),
                                  )
                                : const Icon(
                                    Icons.favorite,
                                    color: Color(0xffEBF0FF),
                                  )),
                        const SizedBox(width: 16),
                        const Icon(
                          Icons.delete_outline_outlined,
                          color: Color(0xff9098B1),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      '299,43',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
