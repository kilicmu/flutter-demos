import 'package:flutter/material.dart';
class ShowPersistentBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(title: Text('show button sheet')),
        body: Row(children: [
          Builder(
              builder: (context) => (RaisedButton(
                    onPressed: () {
                      showBottomSheet(
                          context: context,
                          builder: (context) => BottomSheet(
                                onClosing: () {},
                                builder: (context) => Container(
                                  height: 200,
                                  color: Colors.blue,
                                  child: Center(
                                    child: RaisedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('dismissBottomSheet'),
                                    ),
                                  ),
                                ),
                              ));
                    },
                    child: Text('showBottomSheet'),
                  ))),
          Builder(
            builder: (context) => RaisedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: 200.0,
                    color: Colors.blue,
                    child: Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('dismissModalBottomSheet'),
                      ),
                    ),
                  ),
                );
              },
              child: Text('showModalBottomSheet'),
            ),
          )
        ]),
      ),
    );
  }
}
