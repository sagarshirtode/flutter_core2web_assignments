import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'employee_model.dart';

dynamic database;
void insertEmployeeData(EmployeeModel emp) async {
  Database localDB = await database;
  localDB.insert(
    "Employee",
    emp.empMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Map>> getEmployeeData() async {
  Database localDB = await database;
  return await localDB.query("Employee");
}

void updateEmployeeData(EmployeeModel emp) async {
  Database localDB = await database;
  localDB.update(
    "Employee",
    emp.empMap(),
    where: "empId = ?",
    whereArgs: [emp.empId],
  );
}

void deleteEmployeeData(int empId) async {
  Database localDB = await database;
  localDB.delete(
    "Employee",
    where: "empId = ?",
    whereArgs: [empId],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), 'EmployeeDB.db'),
    version: 1,
    onCreate: (db, version) {
      db.execute('''
        create table Employee(
          empName text, 
          empId int primary key,
          devType text, 
          empSal real
        )
      ''');
    },
  );

  EmployeeModel emp1 = EmployeeModel(
    empName: 'Ashish',
    empId: 15,
    devType: 'Flutter',
    empSal: 1.5,
  );
  EmployeeModel emp2 = EmployeeModel(
    empName: 'Ankit',
    empId: 16,
    devType: 'React',
    empSal: 1.0,
  );
  EmployeeModel emp3 = EmployeeModel(
    empName: 'Anshul',
    empId: 17,
    devType: 'Node',
    empSal: 2.0,
  );
  EmployeeModel emp4 = EmployeeModel(
    empName: 'Aman',
    empId: 18,
    devType: 'MERN',
    empSal: 2.5,
  );

  insertEmployeeData(emp1);
  insertEmployeeData(emp2);
  insertEmployeeData(emp3);
  insertEmployeeData(emp4);

  print(await getEmployeeData());

  emp2 = EmployeeModel(
    empName: emp2.empName,
    empId: emp2.empId,
    devType: "${emp2.devType}-Backend developer",
    empSal: emp2.empSal + 0.5,
  );
  updateEmployeeData(emp2);

  print(await getEmployeeData());

  deleteEmployeeData(emp1.empId);

  print(await getEmployeeData());
}
