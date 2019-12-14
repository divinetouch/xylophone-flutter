import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playsSound(num number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  _buildKey(num number, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          _playsSound(number);
        },
        color: color,
        child: null,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildKey(1, Colors.red),
              _buildKey(2, Colors.orange),
              _buildKey(3, Colors.yellow),
              _buildKey(4, Colors.lightGreen),
              _buildKey(5, Colors.green),
              _buildKey(6, Colors.green[400]),
            ],
          ),
        ),
      ),
    );
  }
}
