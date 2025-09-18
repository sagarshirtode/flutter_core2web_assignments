import 'package:chat_app/ui/widgets/profile_screen.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Courses Screen',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.keyboard_arrow_left),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Courses Screen',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return ProfileScreen();
                }));
              },
              child: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
