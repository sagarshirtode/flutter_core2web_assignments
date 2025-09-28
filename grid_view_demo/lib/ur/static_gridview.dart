import 'package:flutter/material.dart';

class StaticGridview extends StatefulWidget {
  const StaticGridview({super.key});

  @override
  State<StaticGridview> createState() => _StaticGridviewState();
}

class _StaticGridviewState extends State<StaticGridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Static GridView',
        style: TextStyle(fontSize: 20),
      )),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text(
                "2",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                "3",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text(
                "4",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text(
                "5",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
