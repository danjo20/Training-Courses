import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int NumberMusic) {
    final player = AudioPlayer();
    player.play(AssetSource('note$NumberMusic.wav'));
  }

  Widget buildButtom(int NumberMusic, Color color) => Expanded(
        child: SizedBox.expand(
          child: TextButton(
              onPressed: () {
                playSound(NumberMusic);
              },
              child: Text(''),
              style: TextButton.styleFrom(
                  backgroundColor: color,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildButtom(1, Colors.red),
              buildButtom(2, Colors.orange),
              buildButtom(3, Colors.yellow),
              buildButtom(4, Colors.green),
              buildButtom(5, Colors.teal),
              buildButtom(6, Colors.blue),
              buildButtom(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
