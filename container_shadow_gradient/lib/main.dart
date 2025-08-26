import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Shadow and Gradient',
              style: TextStyle(fontSize: 30),
            ),
            backgroundColor: Colors.blue),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple, Colors.red],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(255, 0, 0, 1),
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: const Text("container"),
          ),
        ),
      ),
    );
  }
}
