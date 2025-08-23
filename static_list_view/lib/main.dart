import 'package:flutter/material.dart';
import 'package:static_list_view/static_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Static List View Demo',
      home: const StaticListView(),
    );
  }
}
