import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme
          .of(context)
          .primaryColor,
      onPressed: () {
        addProduct({'title': 'Panna Cotta', 'image': 'assets/platform.png'});
      },
      child: Text('Add Product'),
    );
  }
}
