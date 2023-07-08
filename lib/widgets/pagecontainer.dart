

import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/string.dart';

class PageCreator extends StatelessWidget {
  final String image;
  final String desc;

  const PageCreator({Key? key, required this.image, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              child: Image.asset(image),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Allstrings.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Maincolors.primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
              child: Image.asset('assets/images/icon.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
