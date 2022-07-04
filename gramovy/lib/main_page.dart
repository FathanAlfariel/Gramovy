import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:gramovy/home/homepage.dart';
import 'package:gramovy/search/search.dart';
import 'package:gramovy/library/library.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getFooter() {
    List items = [
      Icons.home,
      Icons.search,
      Icons.library_music,
    ];
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            onTabChange: (index) {
              setState(() {
                activeTab = index;
              });
            },
            padding: EdgeInsets.all(13),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.library_music,
                text: 'Library',
              ),
            ]
          ),
        ),
      ),
      ],
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: const [
        HomePage(),
        Search(),
        Library(),
      ],
    );
  }
}
