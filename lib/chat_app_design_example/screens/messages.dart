import 'package:flutter/material.dart';
import 'package:flutter_examples/chat_app_design_example/sample_data/sample_data.dart';

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
        body: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          child:  ClipRRect( 
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
            child: ListView.builder(
              itemCount: chatMessages.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.only(
                        top: 10,
                        left:
                            chatMessages[index].sender.name == currentUser.name
                                ? 50
                                : 5,
                        right:
                            chatMessages[index].sender.name == currentUser.name
                                ? 5
                                : 50),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        color:
                            chatMessages[index].sender.name == currentUser.name
                                ? Colors.grey
                                : Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(chatMessages[index].text,
                        textAlign:
                            chatMessages[index].sender.name == currentUser.name
                                ? TextAlign.right
                                : TextAlign.left));
              },
            ),
          ),
        ));
  }
}
