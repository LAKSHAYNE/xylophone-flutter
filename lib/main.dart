import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  buildkey({Color co,int key_num}){
    Expanded(
      child: FlatButton(
        color: co;
        onPressed: () {
          playsound(key_num);
        },
      ),
    ),
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(co:Colors.red,key_num: 1),
              buildkey(co:Colors.orange,key_num: 2),
              buildkey(co:Colors.yellow,key_num: 3),
              buildkey(co:Colors.green,key_num: 4),
              buildkey(co:Colors.green[900],key_num: 5),
              buildkey(co:Colors.blue,key_num: 6),
              buildkey(co:Colors.purple,key_num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
