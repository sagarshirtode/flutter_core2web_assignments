import 'package:flutter/material.dart';

class Textfielddemo extends StatefulWidget {
  const Textfielddemo({super.key});

  @override
  State<Textfielddemo> createState() => _TextfielddemoState();
}

class _TextfielddemoState extends State<Textfielddemo> {
  TextEditingController nameTextController = TextEditingController();
  List<String> nameList = [];
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TextField Demo',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
                controller: nameTextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Enter your name',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                onChanged: (value) {}),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                name = nameTextController.text;
                nameList.add(name);
                nameTextController.clear();
                setState(() {});
              },
              child: const Text(
                'Show Data',
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                physics: const ScrollPhysics(),
                itemCount: nameList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Text(
                    nameList[index],
                    style: const TextStyle(fontSize: 30),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
