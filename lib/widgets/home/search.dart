
import 'package:flutter/material.dart';

import '../../constants/color.dart';

class Searchwidget extends StatelessWidget {
  const Searchwidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            width: size.width * .9,
            decoration: BoxDecoration(
              color: Maincolors.primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black54.withOpacity(.6),
                ),
                const Expanded(
                    child: TextField(
                  showCursor: false,
                  decoration: InputDecoration(
                      hintText: 'Search flower',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none),
                )),
                Icon(
                  Icons.mic,
                  color: Colors.black54.withOpacity(.6),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
