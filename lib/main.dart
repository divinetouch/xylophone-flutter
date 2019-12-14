import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playsSound(num number) {
    final player = AudioCache();
    player.play('note$number.wav');
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
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _playsSound(1);
                  },
                  color: Colors.red,
                  child: Text(
                    '',
                    style: TextStyle(),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _playsSound(2);
                  },
                  color: Colors.orange,
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _playsSound(3);
                  },
                  color: Colors.yellow,
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _playsSound(4);
                  },
                  color: Colors.lightGreen,
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _playsSound(5);
                  },
                  color: Colors.green,
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _playsSound(6);
                  },
                  color: Colors.purple,
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
