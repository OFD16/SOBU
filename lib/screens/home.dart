
import 'package:flutter/material.dart';
import 'package:safe_house/screens/discover.dart';
import 'package:safe_house/screens/home_details.dart';
import 'package:safe_house/screens/profile.dart';

import 'welcome/feed.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  List<Widget> screens = const [
    Feed(),
    DiscoverScreen(),
    HomeDetailsScreen()
    //ProfileScreen(),
  ];

  int _currentIndex = 0;
    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE8E4E4),
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: const Color(0xffC42727),
          onTap: (index) => {
            setState(() {
              _currentIndex = index;
            }),
          },
        ),
      ),
    );
  }
}
