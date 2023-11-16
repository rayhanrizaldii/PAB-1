import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String imagePath;
  final String desc;
  final String name;

  const ThirdPage({
    Key? key,
    required this.imagePath,
    required this.desc,
    required this.name,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
            width: 300,
            height: 300,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 200),
            child: Text(
              widget.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 100, right: 100),
            child: Text(
              widget.desc,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: ElevatedButton(
                onPressed: togglePlay,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isPlaying ? Colors.red : Colors.green,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 40, right: 40, bottom: 10),
                  child: Text(
                    isPlaying ? 'Pause' : 'Play',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
