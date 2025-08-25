import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Expanded Demo',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Text('Container 1'),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Text('Container 2'),
          ),
        ],
      ),
    );
  }
}
