
import 'package:flutter/material.dart';

void func_buynow (context) {
  showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("sss"),
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
}