import 'package:flutter/material.dart';
//import './mrp_requirements.dart' as mrp;

class ProfilePage extends StatelessWidget {
//    Widget _buildAvatar() {
//      return Container(
//          width: 110.0,
//          height: 110.0,
//          decoration: BoxDecoration(
//            shape: BoxShape.circle,
//            border: Border.all(color: Colors.white30),
//          ),
//          padding: const EdgeInsets.all(3.0),
//          child: new CircleAvatar(
//              backgroundColor: Colors.lightBlueAccent,
//              child: new Text('BN')
//          ));
//    }

    Widget _buildUserInfo() {
      return new Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
              children: <Widget>[
                new Text('Name'),
                new Text('Major'),
                new Text('Year')
              ]
          ));
    }

//    Widget _userServiceHours() {
//      return new Container(
//          padding: EdgeInsets.all(10.0),
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              new Text('0'),
//              new Text('Service Hours This Year')
//            ],
//          ));
//    }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Profile')
      ),
        body: new SingleChildScrollView(
            child: new Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(20.0)),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //_buildAvatar(),
                        _buildUserInfo()
                      ]),
                  //_userServiceHours(),
                  //Text('Additional MRP Requirements'),
                  //mrp.MrpRequirements()
                ]
            )
        )
    );
  }
}