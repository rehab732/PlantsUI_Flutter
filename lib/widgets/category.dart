
import 'package:flutter/material.dart';
import 'package:plants/constants/color.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.flowercatimage,
    required this.flowercat,
  }) : super(key: key);

  final List<String> flowercatimage;
  final List<String> flowercat;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      // width: size.width*.2,
      child: ListView.builder(
          itemCount: flowercatimage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset(flowercatimage[index])),
                ),
                Text(
                  flowercat[index],
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Maincolors.primaryColor,
                    fontSize: 16,
                  ),
                )
              ],
            );
          }),
    );
  }
}
