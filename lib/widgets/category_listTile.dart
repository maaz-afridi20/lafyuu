import 'package:flutter/material.dart';

class CategoryListTile extends StatelessWidget {
  Image? listimage;
  String? myText;
  Color? textColor;
  FontWeight? textFontweight;
  String? trailingText;
  CategoryListTile({
    this.listimage,
    this.myText = '',
    this.textColor,
    this.textFontweight,
    this.trailingText = '',
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            trailingText!,
            style: const TextStyle(
              color: Color(0xff9098B1),
            ),
          ),
          const SizedBox(width: 25),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
      leading: listimage,
      title: Text(
        myText!,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}
