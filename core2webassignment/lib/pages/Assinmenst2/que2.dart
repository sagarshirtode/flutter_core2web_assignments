import 'package:flutter/material.dart';

class Que22 extends StatefulWidget {
  const Que22({super.key});

  @override
  State<Que22> createState() => _Que22State();
}

class _Que22State extends State<Que22> {
  var isVirat = true;

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
              child: isVirat
                  ? Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg")
                  : Image.network(
                      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRsQuJkzlA5nkhVVtV5sdj0OvpYfUjZHayyqGzO6HsqtRlfhPznqVuF2x8BI4AbtMi9HV4anvBpWoVBCjNUqSRw-g"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                isVirat = !isVirat;
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
