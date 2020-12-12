import 'package:flutter/material.dart';
enum MenuItem {menu1, menu2, menu3}

class PopupMenuButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('popup menu button'),
          actions: [
            PopupMenuButton<MenuItem>(
              icon: Icon(Icons.more),
              onSelected: (result) {
                print('result $result');
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItem>>[
                const PopupMenuItem(
                  child: Text('menu1'),
                  value: MenuItem.menu1
                ),
                const PopupMenuItem(
                  child: Text('menu2'),
                  value: MenuItem.menu2
                ),
                const PopupMenuItem(
                  child: Text('menu3'),
                  value: MenuItem.menu3
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}