import 'package:flutter/material.dart';

import '../models/home.dart';
import '../Widgets/homepage.dart';

class HomePages extends StatelessWidget {
  final List<Home> loadedHome = [
    Home(
      hid: 'h1',
      hname: 'My Accounts',
      himageUrl: 'https://cdn4.iconfinder.com/data/icons/ikooni-outline-seo-web/128/seo-12-512.png',
    ),
    Home(
      hid: 'h2',
      hname: 'Transfer money',
      himageUrl:
          'https://www.macatawabank.com/images/default-source/product-icons/largetransferfundsicon.png?sfvrsn=16afddd3_2',
    ),
    Home(
      hid: 'h3',
      hname: 'Airtime/ Pay Bills',
      himageUrl:
          'https://image.flaticon.com/icons/png/512/126/126083.png',
    ),
    Home(
      hid: 'h4',
      hname: 'Forex Exchanges',
      himageUrl:
          'https://cdn0.iconfinder.com/data/icons/banking-and-finance-3-2/48/101-512.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Demo User'),
      ),
    body: GridView.builder(
        itemBuilder: (ctx, i) => HomePage(loadedHome[i].hid, loadedHome[i].hname, loadedHome[i].himageUrl),
        padding: EdgeInsets.all(10.0),
        itemCount: loadedHome.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
   
    );
  }
}
