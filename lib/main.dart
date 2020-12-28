import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Container Exercise!")),
      body: Container(
        color: Colors.redAccent,
        margin: EdgeInsets.fromLTRB(8, 16, 16, 8),
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.amber,
                Colors.blue,
                Colors.purple,
                Colors.red,
                Colors.green
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(16)),
          margin: EdgeInsets.all(10),
        ),
      ),
    ));
  }
}
