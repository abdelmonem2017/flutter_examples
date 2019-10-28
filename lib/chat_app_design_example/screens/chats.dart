import 'package:flutter/material.dart';
import 'package:flutter_examples/chat_app_design_example/widgets/recent_chats.dart';
import 'package:flutter_examples/chat_app_design_example/widgets/category_selector.dart';
import 'package:flutter_examples/chat_app_design_example/widgets/favorite_contacts.dart';
import 'package:flutter_examples/style/theme.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chatTheme.primaryColor,
      appBar: AppBar(
        backgroundColor: chatTheme.primaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
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
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: chatTheme.accentColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Column(
                  children: <Widget>[FavoriteContacts(), RecentChats()],
                )),
          )
        ],
      ),
    );
  }
}
