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
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Greybox(),
                  ]),
            )));
  }
}

class Greybox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Signin(),
          TextField(),
          TextField2(),
          ButtonClass(),
          BottomText()
        ],
      ),
      width: 400,
      height: 430,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: new BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.blue[900],
            spreadRadius: 0.1,
            offset: Offset(
              3.0,
              -3.0,
            ),
          )
        ],
      ),
    );
  }
}

class TextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: TextFormField(
        autofocus: false,
        style: TextStyle(fontSize: 18.0, color: Colors.pink[900]),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity, color: Colors.pink[900]),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Username',
          contentPadding:
              const EdgeInsets.only(left: 20.0, bottom: 5.0, top: 10.0),
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
    );
  }
}

class TextField2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: TextFormField(
        autofocus: false,
        style: TextStyle(fontSize: 18.0, color: Colors.pink[900]),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_open,
            color: Colors.pink[900],
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Password',
          contentPadding:
              const EdgeInsets.only(left: 20.0, bottom: 5.0, top: 10.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink[900]),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
        ),
      ),
    );
  }
}

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Text("Sign In",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pink[900],
              fontSize: 32)),
    );
  }
}

class ButtonClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
          alignment: Alignment.center,
          child: FlatButton(
              onPressed: null,
              child: Text('Login',
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
      child: Column(children: [
        Text("Don't have an account?",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        FlatButton(
            onPressed: null,
            child: Text('Sign Up',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[900],
                    fontSize: 18))),
      ]),
      margin: EdgeInsets.only(top: 20),
    );
  }
}
