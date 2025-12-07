import 'dart:developer';

import 'package:cubit_state_mgmt/bloc_builder/cubit/company_cubit.dart';
import 'package:cubit_state_mgmt/bloc_builder/state/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return CompanyCubit();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    log("in main app");
    final companyCubit = BlocProvider.of<CompanyCubit>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CompanyCubit, Company>(
            builder: (context, state) {
              return Text("Cmp Name: ${state.cmpName}");
            },
          ),
          Text("Emp Count: ${companyCubit.state.empCount}"),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              companyCubit.changeCompanyName("Meta");
            },
            child: Text("Change ComName"),
          ),
        ],
      ),
    );
  }
}
