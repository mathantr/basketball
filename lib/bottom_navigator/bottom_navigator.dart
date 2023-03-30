import 'package:basketball/colors/const.dart';
import 'package:basketball/screens/home_screeen.dart';
import '../screens/profile.dart';

import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Sports',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    Text('Live', style: TextStyle(fontSize: 20, color: Colors.white)),
    Text('Chat', style: TextStyle(fontSize: 20, color: Colors.white)),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: black,
        selectedItemColor: liteGreen,
        unselectedItemColor: Colors.white.withOpacity(0.4),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/9664/9664027.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/2423/2423800.png')),
            label: 'Sport',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/8889/8889238.png')),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/992/992658.png')),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
