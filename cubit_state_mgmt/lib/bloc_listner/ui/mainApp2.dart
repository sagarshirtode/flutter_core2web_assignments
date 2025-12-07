import 'dart:developer';

import 'package:cubit_state_mgmt/bloc_builder/cubit/company_cubit.dart';
import 'package:cubit_state_mgmt/bloc_builder/state/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Mainapp2 extends StatefulWidget {
  const Mainapp2({super.key});
  @override
  State<Mainapp2> createState() => _Mainapp2State();
}

class _Mainapp2State extends State<Mainapp2> {
  @override
  Widget build(BuildContext context) {
    log("in main app");
    final companyCubit = BlocProvider.of<CompanyCubit>(context);
    return Scaffold(
      body: BlocListener<CompanyCubit, Company>(
        listener: (context, state) {
          log("in listener");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Company Name Changed to ${state.cmpName}"),
              duration: Duration(seconds: 1),
            ),
          );
        },
        child: Column(
          children: [
            BlocBuilder<CompanyCubit, Company>(
              builder: (context, state) {
                return Text("Cmp Name: ${state.cmpName}");
              },
            ),
            Text( "Emp count: ${companyCubit.state.empCount}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                companyCubit.changeCompanyName("Google");
              },
              child: Text("Change Cmp Name"),
            ),
          ],
        ),
      ),
    );
  }
}
