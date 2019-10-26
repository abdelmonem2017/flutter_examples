import 'package:flutter/material.dart';
import 'package:flutter_examples/chat_app_design_example/sample_data/sample_data.dart';
import 'package:flutter_examples/chat_app_design_example/widgets/message_body.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'John',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: chatMessages.length,
                    itemBuilder: (BuildContext context, int index) {
                      bool isMe =
                          chatMessages[index].sender.name == currentUser.name;
                      return MessageBody(
                          chatMessage: chatMessages[index], isMe: isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposser()
          ],
        ),
      ),
      // _buildMessageComposser(),
    );
  }
}

_buildMessageComposser() {
  return Container(
    padding: EdgeInsets.all(8),
    height: 60,
    color: Colors.white,
    child: Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.perm_media,
            color: Colors.red,
            size: 20,
          ),
          onPressed: () {},
        ),
        Expanded(
          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration.collapsed(hintText: 'Message text'),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.send,
            color: Colors.red,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}
