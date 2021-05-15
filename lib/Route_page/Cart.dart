import 'package:flutter/material.dart';
import 'package:flutter_app_1st/components/Cart_products.dart';

class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.red,
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Cart_prodcuts(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text("Total :"),
              subtitle: Text("\$230.00"),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              //padding: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
              child: Text(
                "Check out",
                style: TextStyle(color: Colors.white),
              ),
            )),
            Padding(
              padding: EdgeInsets.all(5),
            )
          ],
        ),
      ),
    );
  }
}
