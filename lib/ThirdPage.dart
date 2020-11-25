import 'dart:math';

import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  @override
  _VolumeTabung createState() => _VolumeTabung();
}

class _VolumeTabung extends State<Third> {
  double hasil = 0;

  TextEditingController jariJari = new TextEditingController();
  TextEditingController tinggi = new TextEditingController();

  void _calculate() {
    setState(() {
      double valJari = double.parse(jariJari.text);
      double valTinggi = double.parse(tinggi.text);

      hasil = (pow(valJari, 2) * 22.0/7) * valTinggi;
    });
  }
  Widget build(BuildContext context) {

    Widget jariJariSection = Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: jariJari,
          decoration: InputDecoration(
            labelText: 'Jari-jari',
          ),
        )
      )
    );

    Widget tinggiSection = Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: tinggi,
          decoration: InputDecoration(
            labelText: 'Tinggi',
          ),
        )
      )
    );

    Widget buttonSection = Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: FlatButton(
          color: Colors.blue[400],
          textColor: Colors.white,
          onPressed: _calculate,
          child: Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              "Hitung",
              style: TextStyle(fontSize: 25),
            ),
          )
        ),
      )
    );

    Widget hasilSection = Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              '$hasil',
              style: TextStyle(fontSize: 36),
              textAlign: TextAlign.center,
            )
          ],
        )
      )
    );

    return new Container(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Volume Tabung',
              style: TextStyle(fontSize: 32),
              textAlign: TextAlign.center,
            )
          ),
          jariJariSection,
          tinggiSection,
          buttonSection,
          hasilSection
        ],
      )
    );
  }
}