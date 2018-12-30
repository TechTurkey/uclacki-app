import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<List<EventCard>> fetchEvents() async {
  final response =
  await http.get('http://uclacki.org/api/events');
  if (response.statusCode == 200) {
    Iterable data = json.decode(response.body);
    List<EventCard> events = data.map( (event) {
      EventCard anEvent = new EventCard(title: event['title'], id: event['id']);
      return anEvent;}).toList();
    return events;
    //return (json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class EventCard {
  final int id;
  final String title;
  final String description;

  EventCard({this.id, this.title, this.description});
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List eventCards;

  @override
  void initState() {
    fetchEvents().then((response) => eventCards = response);
    // Future.then is async operation. events will continue to be [] until data arrives
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(eventCards) =>
        ListTile(
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
                    builder: (context) => EventDescriptionPage()
                )
            );
          },
        );

    Card makeCard(eventCards) =>
        Card(
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(64, 75, 96, .9)),
                child: makeListTile(eventCards)
            )
        );

    final makeBody = Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: eventCards.length,
            itemBuilder: (BuildContext context, int index) {
              return makeCard(eventCards[index]);
            }
        )
    );

    return new FutureBuilder(
        future: fetchEvents(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                  title: Text("Events")
              ),
              body: makeBody,
            );
          }
          else {return CircularProgressIndicator();}
        }
    );
  }
}

class EventDescriptionPage extends StatelessWidget {
  final EventCard eventCards;
  EventDescriptionPage({Key key, this.eventCards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${eventCards.title}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('${eventCards.description}'),
      )
    );
  }
}