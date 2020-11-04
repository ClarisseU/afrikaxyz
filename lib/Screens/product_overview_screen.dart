import 'package:flutter/material.dart';

import '../models/product.dart';
import '../Widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      name: 'MTN AIRTIME',
      imageUrl: 'https://www.mtn.co.rw/wp-content/uploads/2020/05/mtn-logo.png',
    ),
    Product(
      id: 'p2',
      name: 'AIRTEL AIRTIME',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQTqRWLiIhVx-4jGZVrPT6FWmq38zu4qwJ5Ng&usqp=CAU',
    ),
    Product(
      id: 'p3',
      name: 'STARTIMES',
      imageUrl:
          'https://i1.wp.com/gadgets-africa.com/wp-content/uploads/2020/04/StarTimes-1.jpg?fit=678%2C380&ssl=1',
    ),
    Product(
      id: 'p4',
      name: 'TIGO AIRTIME',
      imageUrl:
          'https://seeklogo.com/images/T/Tigo-logo-BDF99BD6CC-seeklogo.com.png',
    ),
    Product(
      id: 'p5',
      name: 'CASHPOWER',
      imageUrl: 'https://igihe.com/IMG/jpg/logo_ewsa.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill/Utility payment'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].name,
          loadedProducts[i].imageUrl,
        ),
        padding: EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
      ),
    );
  }
}
