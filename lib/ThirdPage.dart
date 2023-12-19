import 'package:flutter/material.dart';
import 'package:praktikum/api/apiController.dart';
import 'package:praktikum/widget/listMovieWidget.dart';

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

  // Future<List<dynamic>>? _data;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _data = apiController().getdatas();
  // }

  List movie = [
    {
      "img": "assets/images/profile1.png",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    },
    {"img": "assets/images/profile2.png", "desc": "Ini Film Tentang Perempuan"},
    {"img": "assets/images/profile3.png", "desc": "Ini Film Terbaik Tahun Ini"},
    {
      "img": "assets/images/profile4.png",
      "desc": "Ini Film Terbaik Tahun Lalu"
    },
    {
      "img": "assets/images/profile5.png",
      "desc": "Ini Film Terbaik Tahun Depan"
    },
    {"img": "assets/images/profile6.png", "desc": "Ini Film Terbaik Tahun Ini"},
    {"img": "assets/images/profile1.png", "desc": "Ini Film Terbaik Tahun Ini"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              width: 400,
              height: 670,
              child: ListView.builder(
                itemCount: movie.length,
                itemBuilder: (context, index) {
                  return listMovies(togglePlay, isPlaying,
                      img: movie[index]['img'], desc: movie[index]['desc']);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
