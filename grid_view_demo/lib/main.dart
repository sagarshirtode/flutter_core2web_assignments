import 'package:flutter/material.dart';
import 'package:grid_view_demo/ur/dynamic_gridview.dart';
import 'package:grid_view_demo/ur/static_gridview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View Demo',
      // home: const StaticGridview(),
      home: const DynamicGridview(),
      debugShowCheckedModeBanner: false,
    );
  }
}
