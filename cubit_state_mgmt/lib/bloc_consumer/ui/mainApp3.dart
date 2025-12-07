import 'dart:developer';

import 'package:cubit_state_mgmt/bloc_builder/cubit/company_cubit.dart';
import 'package:cubit_state_mgmt/bloc_builder/state/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Mainapp3 extends StatefulWidget {
  const Mainapp3({super.key});
  @override
  State<Mainapp3> createState() => _Mainapp3State();
}

class _Mainapp3State extends State<Mainapp3> {
  @override
  Widget build(BuildContext context) {
    log("in main app");
    final companyCubit = BlocProvider.of<CompanyCubit>(context);
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        BlocConsumer<CompanyCubit, Company>(
          listener: (context, state) {
            log("in listener");
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    "Company name changed to ${companyCubit.state.cmpName}"),
                duration: const Duration(seconds: 1),
              ),
            );
          },
          builder: (context, state) {
            return Text("Cmp Name:${companyCubit.state.cmpName}",
                style: const TextStyle(fontSize: 20));
          },
        ),
        Text(
          "Emp count: ${companyCubit.state.empCount}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            companyCubit.changeCompanyName("Google");
          },
          child: const Text("Change Company Name"),
        ),
      ]),
    );
  }
}
