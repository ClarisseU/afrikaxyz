import 'package:flutter/material.dart';

import '../Screens/product_detail.dart';
import '../Screens/dialog.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;

  ProductItem(this.id, this.name, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => ShowAlert(),
              ),
            );
           
          },
          child: Image.network(imageUrl),
        ),
      ),
      
    );
  }
}
