import 'package:dynamic_list_view_demo/dynamic_listview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic List View',
      home: DynamicListView(),
    );
  }
}
