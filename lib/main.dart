import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  String sound = '';
  List notes = ['도', '레', '미', '파', '솔', '라', '시'];

  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
    setState(() {
      sound = notes[note - 1];
    });
  }

  Expanded buildKey({Color color, int note}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(note);
        },
        color: color,
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
            children: <Widget>[
              buildKey(color: Colors.red, note: 1),
              buildKey(color: Colors.orange, note: 2),
              buildKey(color: Colors.yellow, note: 3),
              buildKey(color: Colors.green, note: 4),
              buildKey(color: Colors.blue, note: 5),
              buildKey(color: Colors.purple, note: 6),
              buildKey(color: Colors.deepPurple, note: 7),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      '$sound',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// https://pub.dev/
// flutter pub add <패키지 이름>     or
// pubspec.yaml 의 dependencies 에 등록
