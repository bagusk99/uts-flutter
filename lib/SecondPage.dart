import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(top: 16),
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.people_alt),
            title: Text(
              'Anggota kelompok', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black54
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, top: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Icon(Icons.adjust),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 8),
                      child: Text('Bagus Kurniawan '),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('(13.2018.1.00754)', style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                ), 
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Icon(Icons.adjust),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 8),
                      child: Text('Andrik Prasetyo '),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('(13.2017.1.00539)', style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Icon(Icons.adjust),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 8),
                      child: Text('Ronny Bintoro '),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('(13.2017.1.00620)', style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Icon(Icons.adjust),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 8),
                      child: Text('Ahmad Faishal F. '),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('(13.2017.1.00648)', style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            )
          )
        ],
      )
    );
  }
}