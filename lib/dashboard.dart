import 'package:flutter/material.dart';
import 'home.dart';
import 'calender.dart';
import 'circle.dart';
import 'updates.dart';
import 'profile.dart';

class DashBoard extends StatefulWidget{
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
 PageController _pageController;
 int _page=0;

 @override
 void initState() {
  super.initState();
  _pageController = PageController();
}

 @override
 void dispose() {
  super.dispose();
  _pageController.dispose();
}

 void navigationTapped(int page) {
  _pageController.animateToPage(page,
      duration: Duration(milliseconds: 300), curve: Curves.ease);
}

 void onPageChanged(int page) {
  setState(() {
    this._page = page;
  });
}

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: PageView(
      controller: _pageController,
      onPageChanged: onPageChanged,
      children: [
        Home(),
        CalenderPage(),
        Circle(),
        Updates(),
        Profile(),
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color(0xFF314556),
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white54,
      showUnselectedLabels: true,
      onTap: navigationTapped,
      currentIndex: _page,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF314556),
          icon: Icon(Icons.tab),
          label:'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tab),
          label:'Kalender',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tab),
          label:'Circle',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tab),
          label:'Updates',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tab),
          label:'Profile',
        ),
      ],
    ),
  );

  }
}