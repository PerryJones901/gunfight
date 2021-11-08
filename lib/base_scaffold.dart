import 'package:flutter/material.dart';
import 'package:gunfight/add_challenge_page.dart';
import 'package:gunfight/discover_page.dart';
import 'package:gunfight/profile_page.dart';

import 'debug_page.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold({Key? key}) : super(key: key);

  @override
  BaseScaffoldState createState() => BaseScaffoldState();
}

class BaseScaffoldState extends State<BaseScaffold> {

  int _currentIndex = 0;

  final tabs = [
    const DiscoverPage(),
    const AddChallengePage(),
    const ProfilePage(),
  ];

  void _pushPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('Debug Page')),
          body: const DebugPage(),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gun Fight'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.bug_report_outlined),
              onPressed: () => _pushPage(),
            )
          ],
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
