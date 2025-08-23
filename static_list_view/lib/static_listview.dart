import 'package:flutter/material.dart';

class StaticListView extends StatelessWidget {
  const StaticListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview Demo',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [postCard(), postCard(), postCard()],
      ),
    );
  }

  Widget postCard() {
    return Column(
      children: [
        Image.network(
            "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.favorite_outline, size: 40),
            SizedBox(width: 10),
            Icon(Icons.message_outlined, size: 40),
            SizedBox(width: 10),
            Icon(Icons.share_outlined, size: 40),
          ],
        ),
        Icon(Icons.book_outlined, size: 40),
      ],
    );
  }
}
