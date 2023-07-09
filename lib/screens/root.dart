import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plants/constants/color.dart';
import 'package:plants/screens/partialscreens/cart.dart';
import 'package:plants/screens/partialscreens/favourit.dart';
import 'package:plants/screens/partialscreens/home.dart';
import 'package:plants/screens/partialscreens/profile.dart';
import 'package:plants/screens/scanpage.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  //to control page index
  int bottomNavIndex = 0;
  //list of page widget
  List<Widget> pages = const [
    HomePage(),
    FavoruitPage(),
    CartPage(),
    ProfilePage()
  ];
  //list of the page icons
  List<IconData> iconsList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];
//list of page title
  List<String> titleList = ['Home', 'Favorite', 'Cart', 'Profile'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Maincolors.lightpink,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Maincolors.primaryColor, width: 1.0)),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Maincolors.primaryColor,
                    backgroundImage:
                        const ExactAssetImage('assets/images/profile.png'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(color: Maincolors.primaryColor),
                    ),
                    Text(
                      "Rehab Mohamed",
                      style: TextStyle(color: Maincolors.primaryColor),
                    )
                  ],
                )
              ],
            ),
            Icon(
              Icons.notifications,
              color: Maincolors.primaryColor,
              size: 40.0,
            )
          ],
        ),
        backgroundColor: Maincolors.lightpink,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: bottomNavIndex,
        children: pages,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: const ScanPage(),
                  type: PageTransitionType.bottomToTop));
        },
        backgroundColor: Maincolors.primaryColor,
        child: Image.asset(
          'assets/images/n.png',
          height: 50.0,
          width: 40.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Maincolors.primaryColor,
        activeColor: Maincolors.primaryColor,
        inactiveColor: Colors.black.withOpacity(.5),
        icons: iconsList,
        activeIndex: bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
