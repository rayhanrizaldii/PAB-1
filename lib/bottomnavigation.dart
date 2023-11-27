import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'FourthPage.dart';

class bottomnavigationbar extends StatefulWidget {
  final int initialIndex;

  const bottomnavigationbar({Key? key, this.initialIndex = 0})
      : super(key: key);

  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  int _selectedIndex = 0;

  List<Widget> _screenList = [SecondPage(), ThirdPage(), FourthPage()];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            tooltip: 'Home',
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            tooltip: 'Movies',
            label: 'Movies',
            icon: Icon(Icons.local_movies_outlined, color: Colors.white),
          ),
          BottomNavigationBarItem(
            tooltip: 'Profile',
            label: 'Profile',
            icon: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
