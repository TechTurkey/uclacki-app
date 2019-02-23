import 'package:flutter/material.dart';
//import './main_ui.dart' as front;
//import './event_description.dart';
import './login_page.dart' as test;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'UCLA CKI',
        //home: front.HomePage(),
      home: test.LoginPage()
      //routes: <String, WidgetBuilder> {
          //'/eventdetail': (_) => EventDescription(),
      //},
    );
  }
}
