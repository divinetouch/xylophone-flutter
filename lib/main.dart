import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playsound(num number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  _playsound(1);
                },
                color: Colors.red,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  _playsound(2);
                },
                color: Colors.orange,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  _playsound(3);
                },
                color: Colors.yellow,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  _playsound(4);
                },
                color: Colors.lightGreen,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  _playsound(5);
                },
                color: Colors.green,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  _playsound(6);
                },
                color: Colors.purple,
                child: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
