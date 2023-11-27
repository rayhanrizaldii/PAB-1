//import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:praktikum/widget/listProfileWidget.dart';
import 'FirstPage.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BebasNeue'),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
              ),
              photo(context),
            ],
          ),
        ),
      ),
    );
  }
}
