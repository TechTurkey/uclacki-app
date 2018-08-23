import 'package:flutter/material.dart';
import './main_ui.dart' as front;
import './event_description.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'UCLA Circle K',
        home: front.HomePage(),
      routes: <String, WidgetBuilder> {
          '/eventdetail': (_) => EventDescription(),
      },
    );
  }
}
