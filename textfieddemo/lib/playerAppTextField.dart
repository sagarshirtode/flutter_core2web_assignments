import 'dart:developer';

import 'package:flutter/material.dart';

class PlayerAppTextField extends StatefulWidget {
  const PlayerAppTextField({super.key});

  @override
  State<PlayerAppTextField> createState() => _PlayerAppTextFieldState();
}

class _PlayerAppTextFieldState extends State<PlayerAppTextField> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> nameList = [];
  String myName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Player App',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter name',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
              ),
              onChanged: (value) {
                log('ON CHANGED: $value');
              },
              onEditingComplete: () {
                log('ON EDITING COMPLETE');
              },
              onSubmitted: (value) => log('ON SUBMITTED'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                myName = _textEditingController.text;
                log('Entered Name: $myName');
                nameList.add(myName);
                _textEditingController.clear();
                setState(() {});
              },
              child: Text('Show Text'),
            ),
            ListView.builder(
              itemCount: nameList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Text(
                  nameList[index],
                  style: TextStyle(fontSize: 20),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
