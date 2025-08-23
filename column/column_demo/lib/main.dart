import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  double deviceWidth = 0;
  double deviceHeight = 0;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    log("Device Width: $deviceWidth");
    log("Device Height: $deviceHeight");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Column App',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          width: deviceWidth,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
                child: Text('Container 1', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
