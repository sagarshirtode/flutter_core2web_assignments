import 'package:flutter/material.dart';

class Que2 extends StatelessWidget {
  const Que2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        centerTitle: true,
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code),
          ),
        ],
      ),
    );
  }
}
