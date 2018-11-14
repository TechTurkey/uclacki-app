import 'package:flutter/material.dart';
import './home_page.dart' as home;
import './chat_page.dart' as chat;
import './profile_page.dart' as profile;
import './event_card.dart' as events;

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
  super.initState();
  controller = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
  controller.dispose();
  super.dispose();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new home.HomePage(),
            new chat.ChatScreen(),
            new events.EventCardInfo(),
            new profile.ProfilePage(),
          ]),
      bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(controller: controller, tabs: <Tab>[
            new Tab(icon: new Icon(Icons.home, size: 32.0), text: "Home"),
            new Tab(icon: new Icon(Icons.chat, size: 32.0), text: "Chat"),
            new Tab(
                icon: new Icon(Icons.calendar_today, size: 32.0),
                text: "Events"),
            new Tab(icon: new Icon(Icons.person, size: 32.0), text: "Profile"),
            new Tab(
              icon: new Icon(Icons.settings, size: 32.0), text: "Links"),
        ])),
    );
  }
}