import 'package:flutter/material.dart';
import './event_card.dart' as event_card;
import './event_description.dart' as event_description;

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List events;

  @override
  void initState() {
    events = event_card.fetchEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(event_card.EventCard events) => ListTile(
        contentPadding:
          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24)
                )
            ),
            child: Icon(Icons.autorenew, color: Colors.white)
        ),
        title: Text(
          "EventCard(title)",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
            "EventCard(Date), EventCard(Time)",
            style: TextStyle(color: Colors.white)),
        trailing:
        Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => event_description.EventDescription()
            )
          );
      },
    );

    Card makeCard(event_card.EventCard events) => Card(
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(events)
      )
    );

    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(events[index]);
        }
      )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Events")
      ),
          body: makeBody,
    );
  }
}
