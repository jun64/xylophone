import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(child: Text(nouns.last),),
        ),
      ),
    );
  }
}


// https://pub.dev/
// flutter pub add <패키지 이름>     or
// pubspec.yaml 의 dependencies 에 등록