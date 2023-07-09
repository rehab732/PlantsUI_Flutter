import 'package:flutter/material.dart';
import 'package:plants/constants/color.dart';

class Tapswidget extends StatefulWidget {
  const Tapswidget({super.key});

  @override
  State<Tapswidget> createState() => _TapswidgetState();
}

class _TapswidgetState extends State<Tapswidget> {
  @override
  Widget build(BuildContext context) {
      int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    List<String> flowercat = [
      'Bridal',
      'Rose',
      'Sunflower',
      'Tulip',
      'Candy',
    ];
    
    return Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 50.0,
            width: size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: flowercat.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Text(
                        flowercat[index],
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: selectedIndex == index
                                ? FontWeight.bold
                                : FontWeight.w300,
                            color: selectedIndex == index
                                ? Maincolors.primaryColor
                                : Maincolors.blackColor),
                      ),
                    ),
                  );
                }),
          );
  }
}