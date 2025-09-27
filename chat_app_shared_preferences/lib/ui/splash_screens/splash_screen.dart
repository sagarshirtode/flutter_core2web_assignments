import 'package:chat_app/ui/data/user_controller.dart';
import 'package:chat_app/ui/widgets/home_screen.dart';
import 'package:chat_app/ui/widgets/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  void navigateToScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () async {
      UserController userController = UserController();
      await userController.getSharedPrefData();
      if (userController.isUserLoggedIn) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        return;
      }
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToScreen(context);
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
            ),
            Positioned(
              right: 20,
              bottom: 0,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.edit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
