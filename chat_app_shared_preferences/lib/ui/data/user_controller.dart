import 'package:shared_preferences/shared_preferences.dart';

class UserController {
  String name = "";
  String passwd = "";
  bool isUserLoggedIn = false;
  //SET DATA
  void setSharedPrefData(Map<String, dynamic> obj) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", obj['name']);
    prefs.setString("passwd", obj['passwd']);
    prefs.setBool("isUserLoggedIn", true);
  }

  //GET DATA
  Future<void> getSharedPrefData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    name = prefs.getString("name") ?? "";
    passwd = prefs.getString("passwd") ?? "";
    isUserLoggedIn = prefs.getBool("isUserLoggedIn") ?? false;
  }
}
