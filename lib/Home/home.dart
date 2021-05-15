import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app_1st/Home/drawer/Drawer.dart';

import 'package:flutter_app_1st/components/horizontal_listView_home.dart';
import 'package:flutter_app_1st/components/products.dart';
import 'package:flutter_app_1st/Route_page/Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w1.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop App"),
        backgroundColor: Colors.red,
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartView()));
              })
        ],
      ),
      drawer: Drawer_class(),
      body: ListView(
        children: [
          //main image drawer
          image_carousel,
          //pading widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          //horizontal list
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Recent Products'),
          ),
          //gridview
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
