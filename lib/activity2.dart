import 'package:flutter/material.dart';

void main() {
  runApp(Activity2());
}

class Activity2 extends StatelessWidget {
  final String text;

  Activity2({Key key, @required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "PopUp Dialog App",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Profile"),
            centerTitle: true,
          ),
          body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(32),
            child: Center(
              child: Text('Hello there Mr/Mrs $text'),
            ),
          ),
        ));
  }
}
