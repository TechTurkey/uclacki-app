import 'package:flutter/material.dart';
import './event_signup.dart' as sign_up;

class EventDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Event Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Event Location',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Text('7:00 PM - 9:00 PM'),
        ],
      ),
    );

    Widget textSection = Container(
        padding: const EdgeInsets.all(25.0),
    child: Text('Event Description', softWrap: true));

    return Scaffold(
      appBar: AppBar(
        title: Text('Event Page'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/banner.png',
            width: 500.0,
            height: 200.0,
            fit: BoxFit.fill,
          ),
          titleSection,
          sign_up.EventSignUp(),
          textSection,
        ],
      ),
    );
  }
}