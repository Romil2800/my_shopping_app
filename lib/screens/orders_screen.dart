import 'package:flutter/material.dart';
import '../providers/orders.dart' show Orders;
import 'package:provider/provider.dart';
import '../Widgets/order_item.dart';
import '../Widgets/app_drawer.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
          itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
          itemCount: orderData.orders.length),
    );
  }
}
