import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildkey({int? nbr, Color? color}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            final player = AudioCache();
            player.play('note$nbr.wav');
          },
          child: Text(' '),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, nbr: 1),
              buildkey(color: Color.fromARGB(255, 244, 136, 54), nbr: 2),
              buildkey(color: Color.fromARGB(255, 244, 216, 54), nbr: 3),
              buildkey(color: Color.fromARGB(255, 162, 244, 54), nbr: 4),
              buildkey(color: Color.fromARGB(255, 1, 253, 148), nbr: 5),
              buildkey(color: Color.fromARGB(255, 5, 119, 218), nbr: 6),
              buildkey(color: Color.fromARGB(255, 168, 5, 255), nbr: 7)
            ],
          ),
        ),
      ),
    );
  }
}
