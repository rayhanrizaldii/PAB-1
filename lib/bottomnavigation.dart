import 'package:flutter/material.dart';
import 'package:aktivitas/SecondPage.dart';
import 'package:aktivitas/ThirdPage.dart';

class bottomnavigationbar extends StatefulWidget {
  final int initialIndex;

  const bottomnavigationbar({Key? key, this.initialIndex = 0})
      : super(key: key);

  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  int _selectedIndex = 0;

  List<Widget> _screenList = [SecondPage(), ThirdPage()];

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
        selectedItemColor: Colors.blueGrey,
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
        ],
      ),
    );
  }
}
