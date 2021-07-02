import 'package:flutter/material.dart';
import '../Widgets/products_grid.dart';
import '../providers/product.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: ProductsGrid(),
    );
  }
}
