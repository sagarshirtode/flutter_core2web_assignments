import 'dart:developer';

import 'package:cubit_state_mgmt/bloc_builder/cubit/company_cubit.dart';
import 'package:cubit_state_mgmt/bloc_builder/state/company.dart';
import 'package:cubit_state_mgmt/bloc_builder/ui/mainApp.dart';
import 'package:cubit_state_mgmt/bloc_consumer/ui/mainApp3.dart';
import 'package:cubit_state_mgmt/bloc_listner/ui/mainApp2.dart';
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
    // return BlocProvider(
    //   create: (context) {
    //     return CompanyCubit();
    //   },
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: MainApp(),
    //   ),
    // );

    // return BlocProvider(
    //   create: (context) {
    //     return CompanyCubit();
    //   },
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: Mainapp2(),
    //   ),
    // );
    return BlocProvider(
      create: (context) {
        return CompanyCubit();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Mainapp3(),
      ),
    );
  }
}

