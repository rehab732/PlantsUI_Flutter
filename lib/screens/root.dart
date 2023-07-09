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
  List<String> titleList = ['Home', 'favourit', 'cart', 'Profile'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[bottomNavIndex],
              style: TextStyle(
                color: Maincolors.blackColor,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.notifications,
              color: Maincolors.blackColor,
              size: 30.0,
            )
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
          'assets/images/scan.png',
          height: 50.0,
          width: 40,
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
