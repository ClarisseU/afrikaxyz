import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String hname;

  ProductDetailScreen(this.hname);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(hname)),
    );
  }
}