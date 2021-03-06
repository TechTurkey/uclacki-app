import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

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

  EventCard({this.id, this.title});
}

class EventCardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<List<EventCard>>(
          future: fetchEvents(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return new ListView(
              children: snapshot.data.map((event) => Text(event.title)).toList());
            }
            return CircularProgressIndicator();
          },
        ),
    );
  }
}