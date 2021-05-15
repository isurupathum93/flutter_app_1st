
import 'package:flutter/material.dart';
import 'package:flutter_app_1st/Home/home.dart';
import 'package:flutter_app_1st/components/products.dart';

import 'package:flutter_app_1st/Controller/product_details_Controller.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails(
      {this.product_details_name,
      this.product_details_old_price,
      this.product_details_picture,
      this.product_details_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  //final TextEditingController _btn_buy = TextEditingController();
  String _message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text("Product Description"),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_details_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "${widget.product_details_price}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                      Expanded(
                          child: Text("${widget.product_details_old_price}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough)))
                    ],
                  ),
                ),
              ),
            ),
            //color: Colors.black,
          ),
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the Size'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),

                //
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the Colour'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Colours"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the Qty'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Qty"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 5),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  //btn_click();
                  func_buynow(context);
                },
                color: Colors.red,
                textColor: Colors.black,
                child: Text(
                  'Buy Now',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              )),

              MaterialButton(
                onPressed: () {},
                color: Colors.red,
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                //padding: EdgeInsets.all(10),
                shape: CircleBorder(),
              ),
              //SizedBox(width: 5),
              MaterialButton(
                onPressed: () {},
                color: Colors.red,
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                //padding: EdgeInsets.all(10),
                shape: CircleBorder(),
              )
              /*
              IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){

              }),*/
              //IconButton(icon: Icon(Icons.favorite_border), onPressed: (){

              //})
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product Details'),
            subtitle: Text(
                'A Flutter Carousel Slider widget. Support Network and Asset Images. You can modify the UI according your design easily. A Flutter Carousel Slider widget. Support Network and Asset Images. You can modify the UI according your design easily. A Flutter Carousel Slider widget. Support Network and Asset Images. You can modify the UI according your design easily.A Flutter Carousel Slider widget. Support Network and Asset Images. You can modify the UI according your design easily.A Flutter Carousel Slider widget. Support Network and Asset Images. You can modify the UI according your design easily.A Flutter Carousel Slider widget. Support Network and Asset Images. You can modify the UI according your design easily.'),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_details_name),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Brand X'),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('New'),
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text(
              'Recent products',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            height: 320.0,
            child: Products(),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Developed by',
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: Text(
              'Isuru pathum',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  //
   /*
  void btn_click() {
    setState(() {
      _message = "11111";
    });
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(_message),
            content: Text('Choose the Colour'),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                child: Text('Close'),
              )
            ],
          );
        });
  }*/
}
