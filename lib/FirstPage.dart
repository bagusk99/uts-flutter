import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: [
          Image.asset(
            'images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              'Selamat datang \n'
              'Ini adalah aplikasi UTS yang kami buat, dan ini adalah halaman '
              'pertama',
              softWrap: true,
            ),          
          )
        ],
      )
    );
  }
}