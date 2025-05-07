import 'package:flutter/material.dart';

class Que10 extends StatelessWidget {
  const Que10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Core2web",
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              "Hello Incuators",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
