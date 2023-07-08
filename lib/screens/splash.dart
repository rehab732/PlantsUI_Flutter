import 'package:flutter/material.dart';
import 'package:plants/constants/color.dart';
import 'package:plants/constants/string.dart';
import 'package:plants/screens/root.dart';
import '../widgets/pagecontainer.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Login()));
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              PageCreator(
                image: 'assets/images/home.png',
                desc: Allstrings.descriptionone,
              ),
              PageCreator(
                image: 'assets/images/splashthree.png',
                desc: Allstrings.descriptiontwo,
              ),
              PageCreator(
                image: 'assets/images/splashone.png',
                desc: Allstrings.descriptionthree,
              ),
            ],
          ),
          Positioned(
            left: 30,
            bottom: 80,
            child: Row(
              children: buildindecator(),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 30,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Maincolors.primaryColor),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Colors.white,
                ),
                onPressed: () {
                  if (currentIndex < 2) {
                    currentIndex++;
                    if (currentIndex < 3) {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    }
                  } else {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const RootPage()));
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _indecator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10.0,
      width: isActive ? 20 : 8,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Maincolors.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> buildindecator() {
    List<Widget> indecators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indecators.add(_indecator(true));
      } else {
        indecators.add(_indecator(false));
      }
    }
    return indecators;
  }
}
