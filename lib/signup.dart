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
                TitleText(),
                TextField(),
                ButtonSignup(),
                BottomText(),
              ]),
            )));
  }
}

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 50, left: 40),
      child: Text("Sign Up",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              fontSize: 32)),
    );
  }
}

class TextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
        child: Column(
          children: [
            TextFormField(
              autofocus: false,
              style: TextStyle(color: Colors.pink[900], fontSize: 18.0),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Full Name',
                contentPadding:
                    const EdgeInsets.only(left: 20.0, bottom: 5.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[900]),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              autofocus: false,
              style: TextStyle(color: Colors.pink[900], fontSize: 18.0),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Username',
                contentPadding:
                    const EdgeInsets.only(left: 20.0, bottom: 5.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[900]),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              autofocus: false,
              style: TextStyle(color: Colors.pink[900], fontSize: 18.0),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email',
                contentPadding:
                    const EdgeInsets.only(left: 20.0, bottom: 5.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[900]),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              autofocus: false,
              style: TextStyle(color: Colors.pink[900], fontSize: 18.0),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                contentPadding:
                    const EdgeInsets.only(left: 20.0, bottom: 5.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[900]),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              autofocus: false,
              style: TextStyle(color: Colors.pink[900], fontSize: 18.0),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Confirm Password',
                contentPadding:
                    const EdgeInsets.only(left: 20.0, bottom: 5.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[900]),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
          ],
        ));
  }
}

class ButtonSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
          alignment: Alignment.center,
          child: FlatButton(
              minWidth: 200,
              onPressed: null,
              child: Text('Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18))),
        ),
        width: 270,
        height: 40,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            color: Colors.pink[900],
            borderRadius: new BorderRadius.circular(40.0)));
  }
}

class BottomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Text("Have an account already?",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        FlatButton(
            onPressed: null,
            child: Text('Sign In',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[900],
                    fontSize: 18))),
      ]),
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20, left: 65),
    );
  }
}
