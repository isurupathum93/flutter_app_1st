import 'package:flutter/material.dart';

class Cart_prodcuts extends StatefulWidget {
  
  @override
  _Cart_prodcutsState createState() => _Cart_prodcutsState();
}

class _Cart_prodcutsState extends State<Cart_prodcuts> {
  var product_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "qty": 1
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "qty": 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: product_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_item(
            cart_prod_name: product_on_the_cart[index]["name"],
            cart_prod_color: product_on_the_cart[index]["color"],
            cart_prod_picture: product_on_the_cart[index]["picture"],
            cart_prod_price: product_on_the_cart[index]["price"],
            cart_prod_qty: product_on_the_cart[index]["qty"],
            cart_prod_size: product_on_the_cart[index]["size"],
          );
        });
  }
}

class Single_cart_item extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_item(
      {this.cart_prod_name,
      this.cart_prod_size,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_color,
      this.cart_prod_qty});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(cart_prod_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Size :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(cart_prod_size),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: Text("Color :"),
                
                ),Padding(padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                child: Text(cart_prod_color),
                
                )
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              child: Text("\$${cart_prod_price}"),
            )
          ],
        ),
      ),
    );
  }
}
