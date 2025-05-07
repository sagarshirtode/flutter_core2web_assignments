import 'package:flutter/material.dart';

class Que9 extends StatelessWidget {
  const Que9({super.key});

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
            borderRadius: BorderRadius.circular(150),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
