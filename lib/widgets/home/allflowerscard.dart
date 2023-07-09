
import 'package:flutter/material.dart';
import 'package:plants/constants/color.dart';
import 'package:plants/models/flower.dart';

class AllFlowersCard extends StatelessWidget {
  const AllFlowersCard({
    Key? key,
    required this.size,
    required this.flowerlist,
  }) : super(key: key);

  final Size size;
  final List<FlowerBouquet> flowerlist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .3,
      child: ListView.builder(
          itemCount: flowerlist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 200,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Maincolors.primaryColor.withOpacity(.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    right: 20,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(flowerlist[index].isFavorated == true
                            ? Icons.favorite
                            : Icons.favorite_border),
                        color: Maincolors.primaryColor,
                        iconSize: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    right: 50,
                    top: 50,
                    bottom: 50,
                    child: Image.asset(flowerlist[index].imageUrl),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 20,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            flowerlist[index].category,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            flowerlist[index].plantName,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 20,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                r'$' +
                                    flowerlist[index].price.toString(),
                                style: TextStyle(
                                  color: Maincolors.primaryColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            );
          }),
    );
  }
}
