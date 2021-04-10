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
            color: Colors.white,
            splashColor: Colors.white,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/taphere.jpg'),
                      fit: BoxFit.cover)),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => CustomDialog(
                  title: "Success",
                  description: "Lorem Ipsum dolor sit amet",
                ),
              );
            }),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  CustomDialog({this.title, this.description, this.buttonText, this.image});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 100, bottom: 16, left: 16, right: 16),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    title,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      splashColor: Colors.black.withOpacity(0.05),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Got it!"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/success-mantapu.gif'),
          ),
        )
      ],
    );
  }
}
