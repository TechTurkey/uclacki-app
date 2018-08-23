import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  Widget _eventCard() {
    return Container(
      width: 400.0,
      height: 150.0,
      decoration: new BoxDecoration(
          border: new Border.all(
            color: Colors.black,
            width: 4.0,
          )),
      child: Row(
          children: <Widget>[
            Image.asset(
              'assets/banner.png',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.fill,
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Event Name'),
                          Text('Event Date and Time')
                        ]))
            )
          ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Events')
        ),
        body: Container(
            padding: EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/eventdetail"),
                child: _eventCard()))
    );
  }
}