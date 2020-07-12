import 'package:first_app/widgets/products/address_tag.dart';
import 'package:first_app/widgets/products/price-tag.dart';
import 'package:first_app/widgets/ui-elements/title-default.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final int productIndex;

  ProductCard(this.product, this.productIndex);

  Widget _buildTitlePriceRow() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TitleDefault(product['title']),
          SizedBox(
            width: 9,
          ),
          PriceTag(product['price'].toString()),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/product/' + productIndex.toString()),
          icon: Icon(Icons.info),
          color: Theme.of(context).accentColor,
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/product/' + productIndex.toString()),
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['image']),
          _buildTitlePriceRow(),
          AddressTag('Mwenge, Dar-Es-Salaam'),
          _buildActionButtons(context)
        ],
      ),
    );
  }
}
