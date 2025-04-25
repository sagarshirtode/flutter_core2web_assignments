import 'package:flutter/material.dart';

class Que33 extends StatefulWidget {
  const Que33({super.key});

  @override
  State<Que33> createState() => _Que33State();
}

class _Que33State extends State<Que33> {
  var isBlue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggle Container"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 250,
              color: isBlue ? Colors.blue : Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                isBlue = !isBlue;
                setState(() {});
              },
              child: Text("Toggle"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
