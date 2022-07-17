import 'package:flutter_project/screen/myFeedHome.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int currentIndex=0;

  _onTabSelected(int index){
    setState(() {
      currentIndex=index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    MyFeedHomePage(),
    Text(
      'Index 1: Business',

    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 0: Home',

    ),
    Text(
      'Index 1: Business',

    ),
    Text(
      'Index 2: School',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: 'Watch',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_center),
              label: 'MarketPlace',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_important_sharp),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',

            ),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          onTap: _onTabSelected,
        ),
        body: Center(child: _widgetOptions[currentIndex]));
  }
}