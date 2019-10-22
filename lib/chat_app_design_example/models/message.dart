import 'package:flutter_examples/chat_app_design_example/models/user.dart';

class Message{
  User sender;
  String time;
  String text;
  bool isliked;
  bool unread;
  Message({
    this.sender,
    this.time,
    this.text,
    this.isliked,
    this.unread,
  });
}