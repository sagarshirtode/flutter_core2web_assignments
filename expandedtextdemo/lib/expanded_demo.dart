import 'dart:developer';

import 'package:flutter/material.dart';

class ExpandedDemo extends StatefulWidget {
  const ExpandedDemo({super.key});

  @override
  State<ExpandedDemo> createState() => _ExpandedDemoState();
}

class _ExpandedDemoState extends State<ExpandedDemo> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Expanded Demo',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Row(
        children: [
          Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/6/63/Wikipedia-logo.png',
              width: 200,
              height: 200),
          const Expanded(
            child: Text(
                'Wikipedia is hosted by the Wikimedia Foundation, a non-profit organization.'),
          )
        ],
      ),
    );
  }
}
