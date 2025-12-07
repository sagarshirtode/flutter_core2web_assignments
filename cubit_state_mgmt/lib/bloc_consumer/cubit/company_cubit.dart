import 'package:cubit_state_mgmt/bloc_builder/state/company.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyCubit extends Cubit<Company> {
  CompanyCubit() : super(Company(cmpName: "Core2Web", empCount: 10));

  void changeCompanyName(String newName) {
    emit(Company(cmpName: newName, empCount: state.empCount));
  }
}
