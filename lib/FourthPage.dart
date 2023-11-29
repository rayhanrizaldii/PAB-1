import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:remixicon/remixicon.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  String? nama;
  String? nbi;
  String? kelas;
  String? alamat;
  String? sosmed;

  void data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? _nama = prefs.getString('nama');
    final String? _nbi = prefs.getString('nbi');
    final String? _kelas = prefs.getString('kelas');
    final String? _alamat = prefs.getString('alamat');
    final String? _sosmed = prefs.getString('sosmed');

    setState(() {
      nama = _nama;
      nbi = _nbi;
      kelas = _kelas;
      alamat = _alamat;
      sosmed = _sosmed;
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                child: Center(
                  child: Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
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
              SizedBox(
                height: 75,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: const Center(
                        child: Icon(
                          Remix.account_box_fill,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          '$nama',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                endIndent: 25,
                indent: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: const Center(
                        child: Icon(
                          Remix.chat_poll_line,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          '$nbi',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                endIndent: 25,
                indent: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: const Center(
                        child: Icon(
                          Remix.book_line,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          '$kelas',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                endIndent: 25,
                indent: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: const Center(
                        child: Icon(
                          Remix.community_fill,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          '$alamat',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                endIndent: 25,
                indent: 25,
              ),
              InkWell(
                onTap: () => launchUrl(
                  Uri.parse('https://www.instagram.com/$sosmed'),
                  mode: LaunchMode.externalApplication,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 25, top: 10, bottom: 10),
                        child: const Center(
                          child: Icon(
                            Remix.instagram_fill,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 25, top: 10, bottom: 10),
                        child: Center(
                          child: Text(
                            '$sosmed',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                    ],
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
