import 'package:first_app/product_control.dart';
import 'package:flutter/material.dart';

import './products.dart';

class ProductsManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsManager(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(addProduct)),
        Expanded(child: Products(products, deleteProduct: deleteProduct))
      ],
    );
  }
}
