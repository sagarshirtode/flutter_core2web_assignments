import 'dart:developer';

import 'package:flutter/material.dart';

class DynamicListView extends StatefulWidget {
  const DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  List<Map> postList = [];
  @override
  Widget build(BuildContext context) {
    log("in build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dynamic ListView Demo',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext context, int index) {
          log("Index:$index");
          return postCard(postIndex: index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postList.add({
            'name': 'Sagar',
            'location': 'Pune',
            'profilePic':
                'https://marketplace.canva.com/EAFXS8-cvyQ/1/0/1600w/canva-brown-and-light-brown%2C-circle-framed-instagram-profile-picture-2PE9qJLmPac.jpg',
            'imageUrl':
                'https://images.ctfassets.net/h6goo9gw1hh6/6mB6Yq2eSYdejwngBnIZl2/f42bd0101dd91887f6dc56fbd513ce59/1-Shooting-Examples.jpg?w=1200&h=1200&fl=progressive&q=70&fm=jpg',
            'isPostLiked': false,
            'isPostBookmarked': false
          });
          log('post Added');
          log('Length: ${postList.length}');
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget postCard({required int postIndex}) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Image.network(
                postList[postIndex]['profilePic'],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  postList[postIndex]['name'],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  postList[postIndex]['location'],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
        Image.network(postList[postIndex]['imageUrl']),
        Row(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    log("Current post Index: $postIndex");
                    if (postList[postIndex]['isPostLiked'] == false) {
                      postList[postIndex]['isPostLiked'] = true;
                    } else {
                      postList[postIndex]['isPostLiked'] = false;
                    }
                    setState(() {});
                  },
                  child: Icon(
                    (postList[postIndex]['isPostLiked'])
                        ? Icons.favorite
                        : Icons.favorite_outline,
                    color: (postList[postIndex]['isPostLiked'])
                        ? Colors.red
                        : Colors.black,
                    size: 40,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.message_outlined, size: 40),
                SizedBox(width: 10),
                Icon(Icons.share_outlined, size: 40),
              ],
            ),
            Icon(Icons.bookmark_outline, size: 40),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
