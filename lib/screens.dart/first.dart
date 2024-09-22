import 'package:flutter/material.dart';
import 'package:meetup_katta_app/screens.dart/chat.dart';
import 'package:meetup_katta_app/screens.dart/events.dart';
import 'package:meetup_katta_app/screens.dart/home_screen.dart';
import 'package:meetup_katta_app/screens.dart/profile.dart';
import 'package:meetup_katta_app/screens.dart/setting.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   HomeScreen(),
  //   Events(),
  //   Chat(),
  //   Profile(),
  //   Setting()
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: PageView(
          controller: pageController,
          children: const [
            HomeScreen(),
            Events(),
            Chat(),
            Profile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Events',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'chat',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'setting',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
