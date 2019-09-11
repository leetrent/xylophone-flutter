import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

//class XylophoneApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: SafeArea(
//          child: Center(
//            child: FlatButton(
//              onPressed: () {
//                final player = AudioCache();
//                player.play('note1.wav');
//              },
//              child: Text('Click me!'),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
class XylophoneApp extends StatelessWidget {
  void playSound(int nbr) {
    final player = AudioCache();
    player.play('note$nbr.wav');
  }

  Expanded buildKey(Color color, int sound) {
    return Expanded(
        child: FlatButton(
      color: color,
      onPressed: () {
        playSound(sound);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
