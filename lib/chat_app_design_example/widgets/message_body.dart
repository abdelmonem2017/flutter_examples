import 'package:flutter/material.dart';
import 'package:flutter_examples/chat_app_design_example/models/message.dart';
import 'package:flutter_examples/style/theme.dart';

class MessageBody extends StatefulWidget {
  Message chatMessage;
  bool isMe;
  MessageBody({this.chatMessage, this.isMe});

  @override
  _MessageBodyState createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    Container msg = Container(
        width: MediaQuery.of(context).size.width * .75,
        margin: EdgeInsets.only(
            top: 10, left: widget.isMe ? 80 : 5, right: widget.isMe ? 5 : 30),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        decoration: BoxDecoration(
            color:
                widget.isMe ? chatTheme.accentColor : Color(0xFFFFEFEE),
            borderRadius: widget.isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))
                : BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.chatMessage.time,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.chatMessage.text,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            )
          ],
        ));

    if (widget.isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
        IconButton(
            onPressed: () {},
            icon: Icon(
                widget.chatMessage.isliked
                    ? Icons.favorite
                    : Icons.favorite_border,
                color:
                    widget.chatMessage.isliked ? Colors.red : Colors.blueGrey))
      ],
    );
  }
}
