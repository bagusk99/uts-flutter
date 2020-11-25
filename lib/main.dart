import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;

void main() {
  runApp(new MaterialApp(
    home: new MyTabs()
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {


  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("UTS Topik Khusus 2020"), 
        backgroundColor: Colors.blue
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.home)),
            new Tab(icon: new Icon(Icons.list)),
            new Tab(icon: new Icon(Icons.pages)),
          ]
        )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third()
        ]
      )
    );
  }
}