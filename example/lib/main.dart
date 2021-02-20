import 'package:flutter/material.dart';

import 'package:flutter_nested/flutter_nested.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_nested',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'flutter_nested'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildList(),
    );
  }

  _buildList() {
    return HiNestedScrollView(
        controller: scrollController,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        headers: [
          Image.network(
            "https://img.mukewang.com/5f057a6a0001f4f918720764.jpg",
          ),
          SizedBox(height: 10)
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.95),
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(index);
        });
  }

  _buildItem(int index) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
      decoration: BoxDecoration(color: Colors.redAccent),
      child: Text("index:$index",
          textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
    );
  }
}
