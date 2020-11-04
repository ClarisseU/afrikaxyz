import 'package:flutter/material.dart';

import '../Screens/product_overview_screen.dart';

class HomePage extends StatelessWidget {
  final String hid;
  final String hname;
  final String himageUrl;

  HomePage(this.hid, this.hname, this.himageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
         onTap: () {
             Navigator.of(context).push(
              MaterialPageRoute(
                 builder: (ctx) => ProductOverviewScreen(),
             ),);},
      child: Image.network(
        himageUrl,
        fit: BoxFit.cover,
      ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
          hname,
          textAlign: TextAlign.center,
        ),
      ),),
    );
  }
}
