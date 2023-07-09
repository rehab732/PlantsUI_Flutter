
import 'package:flutter/material.dart';

import '../../constants/color.dart';

class RecommendedText extends StatelessWidget {
  const RecommendedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, bottom: 20, top: 0),
      child: Text(
        'Recommended',
        style: TextStyle(
          color: Maincolors.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
      ),
    );
  }
}
