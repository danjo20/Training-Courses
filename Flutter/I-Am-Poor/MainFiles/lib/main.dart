import 'package:flutter/material.dart';

void main() {
  runApp(ImPoor());
}

class ImPoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[500],
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Center(
            child: Text(
              'I am poor',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 3.0,
              ),
            ),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/stone.png'),
          ),
        ),
      ),
    );
  }
}
