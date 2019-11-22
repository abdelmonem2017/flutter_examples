import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  void _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Material Dialog'),
            content: Text('This is the content of the material dialog'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _dismissDialog();
                  },
                  child: Text('Close')),
              FlatButton(
                onPressed: () {
                  print('HelloWorld!');
                  _dismissDialog();
                },
                child: Text('Print HelloWorld!'),
              )
            ],
          );
        });
  }

  void _dismissDialog() {
    Navigator.pop(context);
  }

  void _showCupertinoDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Cupertino Dialog'),
            content: Text('This is the content of the cupertino dialog'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _dismissDialog();
                  },
                  child: Text('Close')),
              FlatButton(
                onPressed: () {
                  print('HelloWorld!');
                  _dismissDialog();
                },
                child: Text('HelloWorld!'),
              )
            ],
          );
        });
  }

  void _showSimpleDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Chosse an Option'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  _dismissDialog();
                },
                child: const Text('Option 1'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _dismissDialog();
                },
                child: const Text('Option 2'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _dismissDialog();
                },
                child: const Text('Option 3'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _dismissDialog();
                },
                child: const Text('Option 4'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Material Dialog'),
            onPressed: () {
              _showMaterialDialog();
            },
          ),
          RaisedButton(
            child: Text('Simple Dialog'),
            onPressed: () {
              _showSimpleDialog();
            },
          ),
          RaisedButton(
            child: Text('IOS Dialog'),
            onPressed: () {
              _showCupertinoDialog();
            },
          ),
        ],
      ),
    );
  }
}
