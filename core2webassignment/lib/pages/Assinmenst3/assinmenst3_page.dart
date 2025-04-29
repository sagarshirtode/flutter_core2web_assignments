import 'package:core2webassignment/pages/Assinmenst3/que1.dart';
import 'package:flutter/material.dart';

class Assinmenst3Page extends StatelessWidget {
  const Assinmenst3Page({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assinmenst 3"),
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
                      builder: (context) => Que31(),
                    ),
                  );
                },
                child: Text("Question 1")),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
