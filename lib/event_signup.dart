import 'package:flutter/material.dart';

class EventSignUp extends StatefulWidget {
  @override
  _EventSignUpState createState() => _EventSignUpState();
}

class _EventSignUpState extends State<EventSignUp> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: null,
        elevation: 4.0,
        padding: EdgeInsets.all(15.0),
        color: Colors.blueAccent,
        child: Text('Sign Me Up!',
          style: TextStyle(
              color: Colors.white, fontSize: 15.0),)
    );
  }
}