import 'package:first_app/pages/product-create.dart';
import 'package:first_app/pages/product-list.dart';
import 'package:first_app/pages/products.dart';
import 'package:flutter/material.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage(this.addProduct, this.deleteProduct);

  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('All products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: _buildSideDrawer(context),
            appBar: AppBar(
              title: Text('Manage Products'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Create',
                    icon: Icon(Icons.create),
                  ),
                  Tab(
                    text: 'My Products',
                    icon: Icon(Icons.list),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ProductCreatePage(addProduct),
                ProductListPage()
              ],
            )));
  }
}
