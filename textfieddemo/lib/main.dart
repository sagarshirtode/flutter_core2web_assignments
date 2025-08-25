import 'package:flutter/material.dart';
import 'package:textfieddemo/playerAppTextField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Fields Demo',
      debugShowCheckedModeBanner: false,
      home: PlayerAppTextField(),
    );
  }
}
