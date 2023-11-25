import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Myapp(),
      ),
    ),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

  void playSound (int soundNumber) async{
    final player = AudioPlayer();
    await player.play(DeviceFileSource(
        '/Users/hashithsithuruwan/StudioProjects/xylophone_flutter/assets/note$soundNumber.wav'));

  }

  Expanded buildKey({required Color color, required int soundNum}){
    return Expanded(
      child: Card(
        child: Container(
          height: 100,
          color: color,
          child: TextButton(
            onPressed: () {
              playSound(soundNum);
            },
            child: Container(),
          ),
        ),
      ),
    );
  }

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildKey(color: Colors.red, soundNum: 1),
        buildKey(color: Colors.orange, soundNum: 2),
        buildKey(color: Colors.yellow, soundNum: 3),
        buildKey(color: Colors.green, soundNum: 4),
        buildKey(color: Colors.blue, soundNum: 5),
        buildKey(color: Colors.indigo, soundNum: 6),
        buildKey(color: Colors.purple, soundNum: 7),


      ],
    );
  }
}
