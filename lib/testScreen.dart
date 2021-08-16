import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class testScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //creating the audio player, play and pause functions
    /* All the information about this package is here:
     https://pub.dev/packages/audioplayers */

    AudioPlayer audioPlayer = AudioPlayer();

    play() async {
      int result = await audioPlayer.play('https://luan.xyz/files/audio/ambient_c_motion.mp3');
      if (result == 1) {
        // success
      }
    }

    pause() async{
      int result = await audioPlayer.pause();
    }

    //The screen components

    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
      ),
      body: Column(
        children: [
          Center(
            //play button, on press the play function will be executed
            child: ElevatedButton(
              child: Icon(Icons.play_arrow),
              onPressed: () {
                play();
              },
            ),
          ),
          Center( // pause button
            child: ElevatedButton(
              child: Icon(Icons.pause),
              onPressed: () {
               pause();
              },
            ),
          ),
        ],
      ),
    );
  }
}