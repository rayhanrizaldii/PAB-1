//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ThirdPage.dart';
import 'FirstPage.dart';

void main() {
  runApp(SecondPage());
}

class CardItem {
  final String imagePath;
  final String desc;
  final String name;

  CardItem(this.imagePath, this.desc, this.name);
}

void _openDetailPage(
    BuildContext context, String imagePath, String desc, String name) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ThirdPage(
        imagePath: imagePath,
        desc: desc,
        name: name,
      ),
    ),
  );
}

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  final List<CardItem> items = [
    CardItem(
        'assets/images/profile1.png',
        'Ini adalah Bunga yang Cantik tapi gamau makan nasi. Maunya makan ice cream sama corndog sama peluk-peluk rayhan.',
        'Bunga'),
    CardItem(
        'assets/images/profile2.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        'User 2'),
    CardItem(
        'assets/images/profile3.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        'User 3'),
    CardItem(
        'assets/images/profile4.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        'User 4'),
    CardItem(
        'assets/images/profile5.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        'Aditiya'),
    CardItem(
        'assets/images/profile6.png',
        ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        'User 6'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BebasNeue'),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            InkWell(
              onTap: () {
                // Navigasi ke halaman pertama
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstPage()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'NETFLIX',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      letterSpacing: 2.5),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(items.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        _openDetailPage(context, items[index].imagePath,
                            items[index].desc, items[index].name);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Image.asset(
                              items[index].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
