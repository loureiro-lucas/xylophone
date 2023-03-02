import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundIndex) {
    Audio.load('assets/note$soundIndex.wav')
      ..play()
      ..dispose();
  }

  Expanded buildKey({color, soundIndex}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.all(0),
            ),
            backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(soundIndex);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundIndex: 1),
              buildKey(color: Colors.orange, soundIndex: 2),
              buildKey(color: Colors.yellow, soundIndex: 3),
              buildKey(color: Colors.green, soundIndex: 4),
              buildKey(color: Colors.teal, soundIndex: 5),
              buildKey(color: Colors.blue, soundIndex: 6),
              buildKey(color: Colors.purple, soundIndex: 7),
            ],
          ),
        ),
      ),
    );
  }
}
