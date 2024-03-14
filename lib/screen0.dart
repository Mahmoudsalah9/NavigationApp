import 'package:flutter/material.dart';
import 'package:navigationdemo/screen1.dart';
import 'package:navigationdemo/screen2.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              style: ButtonStyle(  backgroundColor: MaterialStateProperty.all<Color>(
                Colors.red,
              ),
              ),
              child: Text('Go To Screen 1',style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen1()),
                );
                //Navigate to Screen 1
              },
            ),
            TextButton (
              style: ButtonStyle(  backgroundColor: MaterialStateProperty.all<Color>(
            Colors.blue.withOpacity(0.5),
              ),
              ),


                child: Text('Go To Screen 2',style: TextStyle(color: Colors.white)),
              onPressed: () {
                //Navigate to Screen 2
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
