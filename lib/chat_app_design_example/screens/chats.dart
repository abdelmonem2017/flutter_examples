import 'package:flutter_examples/chat_app_design_example/widgets/category_selector.dart'; 
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)
              )
            ),
            
          ),)
        ],
      ),
    );
  }
}
