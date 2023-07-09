
import 'package:flutter/material.dart';
import 'package:plants/models/flower.dart';

import '../../constants/color.dart';

class RecommendedCards extends StatelessWidget {
  const RecommendedCards({
    Key? key,
    required this.size,
    required this.flowerlist,
  }) : super(key: key);

  final Size size;
  final List<FlowerBouquet> flowerlist;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: size.height * .5,
      child: ListView.builder(
        itemCount: flowerlist.length,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Maincolors.primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 80.0,
            padding: const EdgeInsets.only(left: 10, top: 10),
            margin: const EdgeInsets.only(bottom: 10, top: 10),
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          color:
                              Maincolors.primaryColor.withOpacity(.6),
                          shape: BoxShape.circle),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        height: 80.0,
                        child: Image.asset(flowerlist[index].imageUrl),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(flowerlist[index].category),
                          Text(
                            flowerlist[index].plantName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Maincolors.blackColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    r'$' + flowerlist[index].price.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Maincolors.primaryColor),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
