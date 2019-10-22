import 'package:flutter/material.dart';
import 'package:flutter_examples/chat_app_design_example/screens/chats.dart';

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
              child: Text('2 UI'),
              onPressed: () { 
              },
            ),
            RaisedButton(
              child: Text('3 UI'),
              onPressed: () { 
              },
            ),
            RaisedButton(
              child: Text('4 UI'),
              onPressed: () { 
              },
            ),  
          ],
        ),
      ),
    );
  }
}
