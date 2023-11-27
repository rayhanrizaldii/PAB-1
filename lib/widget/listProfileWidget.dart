import 'package:flutter/material.dart';
import 'package:praktikum/bottomnavigation.dart';

List profileList = [
  {"imageUrl": "assets/images/profile1.png"},
  {"imageUrl": "assets/images/profile2.png"},
  {"imageUrl": "assets/images/profile3.png"},
  {"imageUrl": "assets/images/profile4.png"},
  {"imageUrl": "assets/images/profile5.png"},
  {"imageUrl": "assets/images/profile6.png"},
];

Expanded photo(BuildContext context) {
  return Expanded(
    child: GridView.count(
      primary: false,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: profileList.map(
        (profile) {
          return InkWell(
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
              child: Image.asset(profile["imageUrl"]),
            ),
          );
        },
      ).toList(),
    ),
  );
}
