import 'package:flutter/material.dart';

class AjustesScreen extends StatelessWidget {
  static const routeName='/details-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Ajustes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quejas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 32,
                wordSpacing: 2.0,
              ),
            ),

          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

