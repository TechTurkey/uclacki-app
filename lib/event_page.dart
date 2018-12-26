import 'package:flutter/material.dart';
//import './event_card.dart' as eventcard;
//import './event_calendar.dart' as eventcalendar;

class EventPage extends StatelessWidget {
  //Widget _eventCard() {
//    return Container(
//        width: 400.0,
//        height: 150.0,
//        decoration: new BoxDecoration(
//            border: new Border.all(
//              color: Colors.black,
//              width: 4.0,
//            )),
//        child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              eventcard.EventCardInfo()
//            ])
//    );
  //return eventcard.EventCardInfo();
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Events')
        ),
        body: Container(
          //padding: EdgeInsets.all(20.0),
            //child: Column(
                //children: <Widget>[
                  //eventcalendar.EventCalendar(),
//                  GestureDetector(
//                      onTap: () => Navigator.pushNamed(context, "/eventdetail"),
//                      child: _eventCard()
//                  )
          ));
  }
}