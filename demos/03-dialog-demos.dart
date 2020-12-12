import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AboutDialogDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("dialog demo"),
        ),
        body: Builder(
          builder: (context) => RaisedButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: 'dialog对话框',
                applicationVersion: '1.0.1',
              );
            },
            child: Text('hello world'),
          ),
        ),
      ),
    );
  }
}

class DialogDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
          appBar: AppBar(
            title: Text("dialog demo"),
          ),
          body: Column(
            children: [
              Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => SimpleDialog(
                              title: Text('simple Dialog'),
                              children: [
                                SimpleDialogOption(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                SimpleDialogOption(
                                    child: Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    })
                              ],
                            ));
                  },
                  child: Text('SimpleDialog'),
                ),
              ),
              Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text('AlertDialog'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: [
                                    Text('this is a alert dialog'),
                                    Text('has two actions')
                                  ],
                                ),
                              ),
                              actions: [
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel'),
                                )
                              ],
                            ));
                  },
                  child: Text('AlertDialog'),
                ),
              ),
              Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                              title: Text("CupertinoAlertDialog"),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: [
                                    Text(
                                        'this is a ios style cupertino alert dialog'),
                                    Text('it has 2 actions for chooses')
                                  ],
                                ),
                              ),
                              actions: [
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel'),
                                )
                              ],
                            ));
                  },
                  child: Text('CupertinoButton'),
                ),
              ),
            ],
          )),
    );
  }
}
