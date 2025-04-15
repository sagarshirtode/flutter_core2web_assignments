import 'package:core2webassignment/pages/Assinmenst1/que3.dart';
import 'package:core2webassignment/pages/Assinmenst1/que4.dart';
import 'package:flutter/material.dart';

import 'que1.dart';
import 'que2.dart';

class Assinmenst1Page extends StatelessWidget {
  const Assinmenst1Page({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assinmenst 1"),
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
                      builder: (context) => Que1(),
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
                      builder: (context) => Que2(),
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
                      builder: (context) => Que3(),
                    ),
                  );
                },
                child: Text("Question 3")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Que4(),
                    ),
                  );
                },
                child: Text("Question 4"))
          ],
        ),
      ),
    );
  }
}
