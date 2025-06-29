import 'package:core2webassignment/pages/Assinmenst4/que10.dart';
import 'package:core2webassignment/pages/Assinmenst4/que4.dart';
import 'package:core2webassignment/pages/Assinmenst4/que1.dart';
import 'package:core2webassignment/pages/Assinmenst4/que2.dart';
import 'package:core2webassignment/pages/Assinmenst4/que3.dart';
import 'package:core2webassignment/pages/Assinmenst4/que5.dart';
import 'package:core2webassignment/pages/Assinmenst4/que6.dart';
import 'package:core2webassignment/pages/Assinmenst4/que7.dart';
import 'package:core2webassignment/pages/Assinmenst4/que8.dart';
import 'package:core2webassignment/pages/Assinmenst4/que9.dart';
import 'package:core2webassignment/pages/iced_mocha_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'pages/Assinmenst1/assinmenst1_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IcedMochaPage(),
      //home: Que10(),
    );
  }
}
