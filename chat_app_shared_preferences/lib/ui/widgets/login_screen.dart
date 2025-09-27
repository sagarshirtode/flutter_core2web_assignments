import 'package:chat_app/ui/data/user_controller.dart';
import 'package:chat_app/ui/widgets/courcec_screen.dart';
import 'package:chat_app/ui/widgets/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login Screen',
              style: TextStyle(fontSize: 25),
            ),
            Text('Please enter your credentials'),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Map<String, dynamic> userData = {
                  'name': emailController.text,
                  'passwd': passwordController.text,
                  'isUserLoggedIn': true,
                };
                UserController userController = UserController();
                userController.setSharedPrefData(userData);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
