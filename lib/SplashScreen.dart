import 'package:flutter/material.dart';
import 'package:praktikum/FirstPage.dart';
import 'package:praktikum/RegisterPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 2000), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final String? nbi = prefs.getString('nbi');

      if (nbi != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (build) {
              return FirstPage();
            },
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (build) {
              return RegisterPage();
            },
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xfffa50d0d),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/world.png',
                width: 500,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/splashscreen.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Praktikum PAB 2023',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Image.asset(
                'assets/images/world1.png',
                width: 500,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
