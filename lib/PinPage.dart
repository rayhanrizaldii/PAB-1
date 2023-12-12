import 'package:flutter/material.dart';
import 'package:praktikum/bottomnavigation.dart';
import 'package:remixicon/remixicon.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key});

  @override
  _PinPageState createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  bool _obscureText = true;
  TextEditingController _pinController = TextEditingController();
  String _errorMessage = '';

  Future<void> _validatePin() async {
    String pin = _pinController.text;

    String apiPin = '2001';
    if (pin == '') {
      _errorMessage = 'Masukkan Pin Anda';
    } else if (pin == apiPin) {
      // PIN benar, lakukan aksi yang diinginkan
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext build) {
            return bottomnavigationbar();
          },
        ),
      );
    } else {
      // PIN salah, tampilkan pesan kesalahan
      _errorMessage = 'PIN salah. Silakan coba lagi.';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 250,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Your PIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please enter your pin that you have created',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Remix.lock_2_line,
                color: Colors.redAccent,
                size: 50,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _pinController,
                obscureText: _obscureText,
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  // labelText: 'enter your pin',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Remix.eye_fill : Remix.eye_off_fill,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                _errorMessage,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed:
                    _validatePin, // Panggil fungsi _validatePin saat tombol ditekan
                child: Center(
                  child: Icon(
                    Remix.lock_unlock_line,
                    size: 30,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.blue,
                  fixedSize: Size(100, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
