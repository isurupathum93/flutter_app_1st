import 'package:flutter/material.dart';


class test_page extends StatefulWidget {
  @override
  _test_pageState createState() => _test_pageState();
}

class _test_pageState extends State<test_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(),
            SizedBox(
              height: 10,
            ),
            TextField(),
          ],
        ),
      ),
    );
  }
}
