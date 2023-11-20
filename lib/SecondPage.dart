//import 'package:flutter/cupertino.dart';
import 'package:aktivitas/bottomnavigation.dart';
import 'package:flutter/material.dart';
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
                        letterSpacing: 2.5),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  primary: false,
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return bottomnavigationbar(
                              initialIndex: 1,
                            );
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset('assets/images/profile1.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return bottomnavigationbar(
                              initialIndex: 1,
                            );
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset('assets/images/profile2.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return bottomnavigationbar(
                              initialIndex: 1,
                            );
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset('assets/images/profile3.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return bottomnavigationbar(
                              initialIndex: 1,
                            );
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset('assets/images/profile4.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return bottomnavigationbar(
                              initialIndex: 1,
                            );
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset('assets/images/profile5.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return bottomnavigationbar(
                              initialIndex: 1,
                            );
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset('assets/images/profile6.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
