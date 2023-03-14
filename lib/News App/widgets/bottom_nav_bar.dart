import 'package:flutter/material.dart';
import 'package:online_shop/News%20App/news_home_page.dart';
import 'package:online_shop/News%20App/screens/discover_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(left: 50),
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, NewsHomePage.routeName);
              },
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, DiscoverScreen.routeName);
            },
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(right: 50),
            child: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
