import 'package:flutter/material.dart';

class Que5 extends StatelessWidget {
  const Que5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Hello Core2web",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
                "https://cdn.prod.website-files.com/654366841809b5be271c8358/659efd7c0732620f1ac6a1d6_why_flutter_is_the_future_of_app_development%20(1).webp",height: 150, width: 150,),
            SizedBox(
              height: 10,
            ),
            Image.network(
                "https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png",height: 150, width: 150,),
            SizedBox(
              height: 10,
            ),
            Image.network(
                "https://storage.googleapis.com/cms-storage-bucket/images/3.27_image.width-635.png",height: 150, width: 150,),
          ],
        ),
      ),
    );
  }
}
