import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _products.add('Awesome Product');
                });
              },
              child: Text('Add Product'),
            ),
          ),
          Column(
              children: _products
                  .map((e) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/noreen.jpg'),
                            Text(e)
                          ],
                        ),
                      ))
                  .toList())
        ]),
      ),
    );
  }
}
