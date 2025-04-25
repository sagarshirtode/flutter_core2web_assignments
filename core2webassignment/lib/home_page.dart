import 'package:core2webassignment/pages/Assinmenst1/assinmenst1_page.dart';
import 'package:core2webassignment/pages/Assinmenst2/assinmenst2_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Core2Web Assinmensts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Assinmenst1Page(),
                  ),
                );
              },
              child: Text("Assignment 1"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Assinmenst2Page(),
                  ),
                );
              },
              child: Text("Assignment 2"),
            ),
          ],
        ),
      ),
    );
  }
}
