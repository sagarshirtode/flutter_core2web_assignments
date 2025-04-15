import 'package:flutter/material.dart';

class Que2 extends StatelessWidget {
  const Que2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Info"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name : 'Sagar Shirtode'"),
              Text(
                  "College : 'Sinhgad Institute of management and computer application'"),
              Text("Branch : 'Development'"),
            ],
          ),
        ),
      ),
    );
  }
}
