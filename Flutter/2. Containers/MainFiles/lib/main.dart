import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: [
              Container(width: 100.0, color: Colors.red),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        color: Colors.yellow, height: 100.0, width: 100.0),
                    Container(color: Colors.green, height: 100.0, width: 100.0)
                  ],
                ),
              ),
              Container(width: 100.0, color: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
