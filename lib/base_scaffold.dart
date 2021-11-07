import 'package:flutter/material.dart';
import 'package:gunfight/discover_page.dart';
import 'package:gunfight/profile_page.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold({Key? key}) : super(key: key);

  @override
  BaseScaffoldState createState() => BaseScaffoldState();
}

class BaseScaffoldState extends State<BaseScaffold> {

  int _currentIndex = 0;

  final tabs = [
    DiscoverPage(),
    Center(child: Text('Add a Challenge Page')),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gun Fight')
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          //backgroundColor: Colors.blue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: 'New Challenge',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
  }
}
