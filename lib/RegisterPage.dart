import 'package:flutter/material.dart';
import 'package:praktikum/FirstPage.dart';
import 'package:praktikum/widget/textfieldCustom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController nbiController = TextEditingController();
  TextEditingController kelasController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController sosmedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/register.png',
                    scale: 4,
                  ),
                  Text(
                    'WELCOME',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Praktikum PAB 2023',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  textFieldCustom('Masukkan Nama', namaController),
                  textFieldCustom('Masukkan NBI', nbiController),
                  textFieldCustom('Masukkan Kelas Praktikum', kelasController),
                  textFieldCustom('Masukkan Alamat ', alamatController),
                  textFieldCustom(
                      'Masukkan Sosial Media Anda', sosmedController),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          await prefs.setString('nama', namaController.text);
                          await prefs.setString('nbi', nbiController.text);
                          await prefs.setString('kelas', kelasController.text);
                          await prefs.setString(
                              'alamat', alamatController.text);
                          await prefs.setString(
                              'sosmed', sosmedController.text);

                          // print(namaController.text);
                          // print(nbiController.text);
                          // print(kelasController.text);

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (build) {
                                return FirstPage();
                              },
                            ),
                          );
                        }
                      },
                      child: Center(
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
