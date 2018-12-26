import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
//import './event_card.dart' as event_card;

class EventCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 10.0,
        ),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Text('A Custom Weekly Calendar:'),
            Calendar(
              onSelectedRangeChange: (range) =>
                print("Range is ${range.item1}, ${range.item2}"),
              isExpandable: true,
                dayBuilder: (BuildContext context, DateTime day) {
                return new InkWell(
                  onTap: () => print("OnTap $day"),
                  child: new Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38)),
                    child: Text(
                      day.day.toString(),
                    ),
                  )
                );
                },
            )
          ]
        ),
      )
    );
  }
}