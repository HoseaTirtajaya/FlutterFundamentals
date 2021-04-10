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
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Container(
                      height: 200,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Hello World"),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 320.0,
                              child: RaisedButton(
                                color: Colors.blue,
                                onPressed: () {},
                                child: Text(
                                  "Got it!",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
