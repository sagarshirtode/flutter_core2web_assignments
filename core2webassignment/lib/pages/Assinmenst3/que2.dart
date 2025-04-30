import 'package:flutter/material.dart';

class Que32 extends StatefulWidget {
  const Que32({super.key});

  @override
  State<Que32> createState() => _Que32State();
}

class _Que32State extends State<Que32> {
  List<int> tableList = [];
  int currentIndex = 1;
  int number = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Print Table"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("$tableList"),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("Add"),
                onPressed: () {
                  setState(() {
                    tableList.add(number * currentIndex);
                    currentIndex++;
                    if (currentIndex > 11) {
                      currentIndex = 1;
                      tableList.clear();
                      tableList.add(number * currentIndex);
                      currentIndex++;
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
