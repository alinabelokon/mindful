import 'package:flutter/material.dart';

class testScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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