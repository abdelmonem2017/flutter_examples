import 'package:flutter/material.dart';
import 'package:flutter_examples/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Examples',
        debugShowCheckedModeBanner: false,
        /* theme:
            ThemeData(primaryColor: Colors.red, accentColor: Color(0xFFFEF9EB)),*/
        theme: ThemeData(
            primaryColor: Color(0xFF3EBACE),
            accentColor: Color(0xFFD8ECF1),
            scaffoldBackgroundColor: Color(0xFFF3F5F7)),
        home: Home());
  }
}
