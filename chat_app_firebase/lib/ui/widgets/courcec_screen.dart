import 'package:chat_app/ui/widgets/profile_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  Future<void> signInAnon() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      print("Signed in as ${FirebaseAuth.instance.currentUser?.uid}");
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> addUser() async {
    await FirebaseFirestore.instance.collection('users').add({
      'name': 'Sagar',
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    signInAnon();
  }

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
                addUser();
              },
              child: Text('Add User'),
            ),
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
