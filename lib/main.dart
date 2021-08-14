import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int) {
    final player = AudioCache();
    player.play('note$int.wav');
  }

  buildKey({
    int soundNumber,
    Color colorContainer,
    Color colorTxt,
  }) =>
      Expanded(
        child: Container(
          color: colorContainer,
          child: TextButton(
            onPressed: () {
              playSound(soundNumber);
            },
            child: Text(
              'click me',
              style: TextStyle(
                color: colorTxt,
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(
                  soundNumber: 1,
                  colorContainer: Colors.red,
                  colorTxt: Colors.white,
                ),
                buildKey(
                  soundNumber: 2,
                  colorContainer: Colors.orange,
                  colorTxt: Colors.white,
                ),
                buildKey(
                  soundNumber: 3,
                  colorContainer: Colors.yellow,
                  colorTxt: Colors.black,
                ),
                buildKey(
                  soundNumber: 4,
                  colorContainer: Colors.green,
                  colorTxt: Colors.white,
                ),
                buildKey(
                  soundNumber: 5,
                  colorContainer: Colors.green[900],
                  colorTxt: Colors.white,
                ),
                buildKey(
                  soundNumber: 6,
                  colorContainer: Colors.blue,
                  colorTxt: Colors.white,
                ),
                buildKey(
                  soundNumber: 7,
                  colorContainer: Colors.purple,
                  colorTxt: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
