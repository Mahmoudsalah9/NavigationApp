import 'package:flutter/material.dart';
import 'package:navigationdemo/screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: TextButton(
          style: ButtonStyle(  backgroundColor: MaterialStateProperty.all<Color>(
            Colors.red,
          ),
          ),
          child: Text('Go Forwards To Screen 2',style: TextStyle(color: Colors.white),),
          onPressed: () {Navigator.pop(context);


          },
        ),
      ),
    );
  }
}
