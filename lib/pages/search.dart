import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/pages/search_result.dart';

class MySearch extends StatelessWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xff40BFFF),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const SearchResult();
                          },
                        ));
                      },
                      child: const Icon(
                        Icons.search,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Nike Air Max',
                      style: TextStyle(
                        color: const Color(0xff223263).withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const Icon(
                  CupertinoIcons.minus_circled,
                  color: Color(0xff223263),
                ),
              ],
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.mic_none_rounded,
            color: Color(0xff9098B1),
            size: 28,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: const [
          Divider(
            thickness: 1,
            color: Color(0xffEBF0FF),
          ),
          SizedBox(height: 16),
          ListTile(
            title: Text(
              'Nike Air Max 270 React ENG',
              style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text(
              'Nike Air Vapormax 360',
              style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text(
              'Nike Air Max 270 React ENG',
              style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text(
              'Nike Air Vapormax 360',
              style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text(
              'Nike Air Max 270 React ENG',
              style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text(
              'Nike Air Max 97 Utility',
              style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
