import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class testScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AudioPlayer audioPlayer = AudioPlayer();

    play() async {
      int result = await audioPlayer.play('https://luan.xyz/files/audio/ambient_c_motion.mp3');
      if (result == 1) {
        // success
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('play'),
              onPressed: () {
                play();
                // Navigate to second route when tapped.
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Stop'),
              onPressed: () {
                // Navigate to second route when tapped.
              },
            ),
          ),
        ],
      ),
    );
  }
}