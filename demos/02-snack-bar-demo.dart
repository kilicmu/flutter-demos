
import 'package:flutter/material.dart';
class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snack Demo",
      home: Scaffold(
        appBar: AppBar(title: Text('snack demo')),
        body: Builder(
          builder: (context) => RaisedButton(
          child: Text('show snack'),
          onPressed: () {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Snack Bar'), 
                duration: Duration(seconds: 4),
                ));
          },
        ),
      ),
      )
    );
  }
}

class SnackBarWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snack Demo",
      home: Scaffold(
        appBar: AppBar(title: Text('snack demo')),
        body: SnackDemo()
      ),
      )
    ;
  }
}

class SnackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          child: Text('show snack'),
          onPressed: () {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Snack Bar'), 
                duration: Duration(seconds: 4),
                backgroundColor: Colors.orange,
                ));
          },
        );
  }
  
}
