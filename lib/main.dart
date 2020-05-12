import 'dart:ui';

import 'package:first_app/product_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
          primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: ProductsManager('FOOD TESTER'),
      ),
    );
  }
}
