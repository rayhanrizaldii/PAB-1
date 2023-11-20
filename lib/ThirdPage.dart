import 'package:aktivitas/widget/listMovieWidget.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool isPlaying = false;

  void togglePlay() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  List movie = [
    {
      "img": "assets/images/profile1.png",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    },
    {"img": "assets/images/profile2.png", "desc": "Ini Film Tentang Perempuan"},
    {"img": "assets/images/profile3.png", "desc": "Ini Film Terbaik Tahun Ini"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                SizedBox(
                  width: 400,
                  height: 650,
                  child: ListView.builder(
                    itemCount: movie.length,
                    itemBuilder: (context, index) {
                      return listMovies(togglePlay, isPlaying,
                          img: movie[index]["img"], desc: movie[index]["desc"]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
