import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black87,
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context,
                bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: new Image.asset(
                      'assets/CKI_Masthead.png', fit: BoxFit.cover),
                  backgroundColor: Colors.blue,
                )
              ];
            },
            body: Container(
                padding: EdgeInsets.all(30.0),
                child: Column(children: <Widget>[
                  Container(
                    width: 350.0,
                    height: 120.0,
                    decoration: new BoxDecoration(
                      border: new Border.all(
                        color: Colors.white,
                        width: 4.0,
                      ),
                      image: new DecorationImage(
                          image: new ExactAssetImage('assets/banner.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                  ),
                  Container(padding: EdgeInsets.all(15.0)),
                  Text("Upcoming Events",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ])
            ))
    );
  }
}
//next meeting page

