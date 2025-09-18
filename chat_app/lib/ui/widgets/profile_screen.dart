import 'package:chat_app/ui/widgets/login_screen%20copy.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Screen',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
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
              'Profile Screen',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
