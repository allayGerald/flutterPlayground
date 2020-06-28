import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue = '';
  String _description = '';
  double _price = 0.00;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product Title'),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              _price = double.parse(value);
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Description'),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                _description = value;
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text('Save'),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': _titleValue,
                'description': _description,
                'price': _price,
                'image': 'assets/platform.png'
              };

              widget.addProduct(product);

              Navigator.pushReplacementNamed(context, '/');
            },
          )
        ],
      ),
    );
  }
}
