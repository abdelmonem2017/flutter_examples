import 'package:flutter/material.dart';
import 'package:flutter_examples/chat_app_design_example/sample_data/sample_data.dart';
import 'package:flutter_examples/chat_app_design_example/screens/messages.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        child: Container(
          padding: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          child: ListView.builder(
            itemCount: chatMessages.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Messages()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                      color: chatMessages[index].unread
                          ? Color(0xFFFFEFEE)
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 310,
                        padding: EdgeInsets.only(
                            top: 10, left: 20, bottom: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                  chatMessages[index].sender.imageURL),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    chatMessages[index].sender.name,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      chatMessages[index].text.length > 30
                                          ? chatMessages[index]
                                              .text
                                              .substring(0, 30)
                                          : chatMessages[index].text,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(chatMessages[index].time,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 80,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: chatMessages[index].unread
                                ? Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.red),
                                    child: Text(
                                      'New',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ))
                                : Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 15),
                                    child: Text(
                                      '',
                                    )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
