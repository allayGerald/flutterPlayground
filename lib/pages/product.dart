import 'dart:async';

import 'package:first_app/widgets/products/address_tag.dart';
import 'package:first_app/widgets/products/price-tag.dart';
import 'package:first_app/widgets/ui-elements/title-default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductPage(this.product);

  _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Confirm Delete'),
            content: Text('This action can not be undone'),
            actions: <Widget>[
              FlatButton(
                child: Text('DISCARD'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('CONTINUE'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        },
        context: context);
  }

  Widget _buildAddressPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Mwenge, Dar Es Salaam',
            style: TextStyle(fontFamily: 'Oswald', color: Colors.grey)),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            '|',
            style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
          ),
        ),
        Text(product['price'].toString() + ' TZS',
            style: TextStyle(fontFamily: 'Oswald', color: Colors.grey))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false); // ignore original request but execute pop
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text(product['title']),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(product['image']),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: TitleDefault(product['title']),
                ),
                _buildAddressPriceRow(),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    product['description'],
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      onPressed: () => _showDeleteConfirmationDialog(context),
                      child: Text('DELETE'),
                    ))
              ],
            )));
  }
}
