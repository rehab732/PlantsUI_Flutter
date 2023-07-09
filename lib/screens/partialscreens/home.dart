import 'package:flutter/material.dart';
import 'package:plants/constants/color.dart';
import '../../models/flower.dart';
import '../../widgets/home/category.dart';
import '../../widgets/home/recommendedcard.dart';
import '../../widgets/home/recommendedtext.dart';
import '../../widgets/home/search.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // int selectedIndex = 0;
    final Size size = MediaQuery.of(context).size;

    //get plant list from model
    List<FlowerBouquet> flowerlist = FlowerBouquet.flowerList;
    //plant category
    List<String> flowercat = [
      'Bridal',
      'Rose',
      'Sunflower',
      'Tulip',
      'Candy',
    ];
    List<String> flowercatimage = [
      'assets/images/b3.png',
      'assets/images/r1.png',
      'assets/images/s4.png',
      'assets/images/t2.png',
      'assets/images/c1.png',
    ];

    //toggel fav button
    // bool toggelIsFav(bool isFav) {
    //   return !isFav;
    // }

    return Scaffold(
      backgroundColor: Maincolors.lightpink,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Searchwidget(size: size),
            const SizedBox(
              height: 20,
            ),
            Category(flowercatimage: flowercatimage, flowercat: flowercat),
            const RecommendedText(),
            RecommendedCards(size: size, flowerlist: flowerlist)
          ],
        ),
      ),
    );
  }
}
