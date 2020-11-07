import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            backgroundColor: Colors.blueGrey[50],
            body: SafeArea(
              child: Column(children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: new Icon(Icons.arrow_back),
                      onPressed: () => Navigator.of(context).pop(),
                    )),
              ]),
            )));
  }
}
