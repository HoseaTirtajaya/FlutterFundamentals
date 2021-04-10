import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PopUp Dialog App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TUGAS ESA UNGGUL"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Click Me!"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Pop Up Alert!"),
                    content: Text("Body of Alert"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Got it!"),
                        onPressed: () {},
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
