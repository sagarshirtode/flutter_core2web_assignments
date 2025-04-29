import 'package:flutter/material.dart';

class Que31 extends StatefulWidget {
  const Que31({super.key});

  @override
  State<Que31> createState() => _Que31State();
}

class _Que31State extends State<Que31> {
  List<Map<dynamic, dynamic>> players = [
    {
      "full_name": "Virat Kohli",
      "age": 36,
      "photo":
          "https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
      "born_city": "Delhi"
    },
    {
      "full_name": "Rohit Sharma",
      "age": 38,
      "photo": "https://documents.iplt20.com/ipl/IPLHeadshot2025/6.png",
      "born_city": "Nagpur"
    },
    {
      "full_name": "Lokesh Rahul",
      "age": 33,
      "photo": "https://documents.iplt20.com/ipl/IPLHeadshot2025/19.png",
      "born_city": "Bengaluru"
    },
    {
      "full_name": "Shubman Gill",
      "age": 25,
      "photo":
          "https://upload.wikimedia.org/wikipedia/commons/3/34/Shubman_Gill_2023_%28cropped%29.jpg",
      "born_city": "Fazilka"
    },
    {
      "full_name": "Hardik Pandya",
      "age": 31,
      "photo":
          "https://upload.wikimedia.org/wikipedia/commons/f/fc/Hardik_Pandya_in_PMO_New_Delhi.jpg",
      "born_city": "Surat"
    }
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cricket Player"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 200,
                child: Center(
                  child: Image.network(
                    players[currentIndex]["photo"],
                  ),
                ),
              ),
              Text(
                "Name: ${players[currentIndex]["full_name"]}",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              Text(
                "AGE : ${players[currentIndex]["age"].toString()}",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              Text(
                "CITY: ${players[currentIndex]["born_city"]}",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("Next"),
                onPressed: () {
                  setState(() {
                    currentIndex = (currentIndex + 1) % players.length;
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
