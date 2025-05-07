import 'package:flutter/material.dart';

class Que6 extends StatelessWidget {
  const Que6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Hello Core2web",
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
