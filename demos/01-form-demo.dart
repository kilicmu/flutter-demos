import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormWidgetState();
  }
}

class FormWidgetState extends State<FormWidget> {
  // states
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _userGender = '';
  String _userName = '';
  String _userPwd = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'app',
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('form app'),
          ),
          body: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  items: ['男', '女']
                      .map((label) =>
                          DropdownMenuItem(child: Text(label), value: label))
                      .toList(),
                  onChanged: (val) {
                    print(val);
                  },
                  onSaved: (val) {
                    setState(() {
                      _userGender = val;
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'uname'),
                  validator: (userName) {
                    if (userName?.length < 10) {
                      return 'username length must longer then 10 bytes';
                    }
                  },
                  onSaved: (userName) {
                    setState(() {
                      _userName = userName;
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'password'),
                  obscureText: true,
                  onSaved: (userPwd) {
                    _userPwd = userPwd;
                  },
                  validator: (value) {
                    if (value?.length < 10) {
                      return 'password length must longer then 10 bytes';
                    }
                  },
                ),
                RaisedButton(
                  child: Text('submit'),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('SnackBar'), duration: Duration(seconds: 5)));
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      print(_userGender);
                      print(_userName);
                      print(_userPwd);
                    }
                  },
                ),
                RaisedButton(
                    child: Text('reset'),
                    onPressed: () {
                      _formKey.currentState.reset();
                    })
              ],
            ),
          ),
        ));
  }
}
