import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/noreen.jpg'),
              Text('Food Paradise')
            ],
          ),
        ),
      ),
    );
  }
}
