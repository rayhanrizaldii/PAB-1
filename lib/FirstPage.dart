import 'package:flutter/material.dart';
import 'package:praktikum/RegisterPage.dart';
import 'package:praktikum/bottomnavigation.dart';
import 'PinPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String? nama;
  String? nbi;
  String? kelas;

  void data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? _nama = prefs.getString('nama');
    final String? _nbi = prefs.getString('nbi');
    final String? _kelas = prefs.getString('kelas');

    setState(() {
      nama = _nama;
      nbi = _nbi;
      kelas = _kelas;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BebasNeue'),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: const Center(
                  child: Text(
                    "Welcome To",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Center(
                  child: Text(
                    "PRAKTIKUM PAB 2023",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      letterSpacing: .5,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    '$nbi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/photo.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "$nama",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "$kelas",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => PinPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.green,
                  ),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: Center(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();

                    await prefs.remove('nama');
                    await prefs.remove('nbi');
                    await prefs.remove('kelas');

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color.fromARGB(255, 211, 60, 60),
                  ),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: Center(
                      child: const Text(
                        'Keluar',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
