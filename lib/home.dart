import 'package:flutter/material.dart';
import 'package:flutter_examples/chat_app_design_example/screens/chats.dart';
import 'package:flutter_examples/travel_app_desgin_example/screens/landing_screen.dart';

import 'booking_app_desgin_example/screens/search_screen.dart';
import 'dialogs/dialogs_screen.dart';
import 'netflex_app_desgin_example/screens/netflex_home.dart';
import 'provider_example/provider_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Chat UI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chats()),
                );
              },
            ),
            RaisedButton(
              child: Text('TravelApp UI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TravelApp()),
                );
              },
            ),
            RaisedButton(
              child: Text('BookingApp UI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
            ),
            RaisedButton(
              child: Text('NetflexApp UI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NetFlexApp()),
                );
              },
            ),
            RaisedButton(
              child: Text('Dialogs Example UI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dialogs()),
                );
              },
            ),
            RaisedButton(
              child: Text('Provider Example'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Provider()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
