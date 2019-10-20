 
import 'package:flutter_examples/chat_app_design_example/screens/chats.dart';
import 'package:flutter/material.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI', 
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB)
      ),
      home: Chats(),
    );
  }
}

 
 
