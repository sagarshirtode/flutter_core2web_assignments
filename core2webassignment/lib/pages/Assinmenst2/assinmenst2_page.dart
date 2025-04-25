import 'package:core2webassignment/pages/Assinmenst2/que1.dart';
import 'package:core2webassignment/pages/Assinmenst2/que2.dart';
import 'package:core2webassignment/pages/Assinmenst2/que3.dart';
import 'package:flutter/material.dart';

class Assinmenst2Page extends StatelessWidget {
  const Assinmenst2Page({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assinmenst 2"),
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
                      builder: (context) => Que21(),
                    ),
                  );
                },
                child: Text("Question 1")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Que22(),
                    ),
                  );
                },
                child: Text("Question 2")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Que33(),
                    ),
                  );
                },
                child: Text("Question 3")),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
