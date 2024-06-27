import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  void playNote(int note) {
    final player = AudioPlayer();
    player.setSourceAsset("audio/note$note.wav");
    player.play(
      AssetSource("audio/note$note.wav"),
    );
  }

  Widget buildKey(Color colorKey, int note) {
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Xylophone App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Colors.amber, 1),
          buildKey(Colors.blue, 2),
          buildKey(Colors.redAccent, 3),
          buildKey(Colors.blueAccent, 4),
          buildKey(Colors.orangeAccent, 5),
          buildKey(Colors.greenAccent, 6),
          buildKey(Colors.pinkAccent, 7),
        ],
      ),
    );
  }
}
