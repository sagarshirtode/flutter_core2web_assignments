import 'dart:io';
void main() {
  print("Enter your name");
  String name = stdin.readLineSync()!;
  print("Enter your age");
  int age = int.parse(stdin.readLineSync()!);
  print("Enter your dream company");
  String company_name = stdin.readLineSync()!;
  print("My name is $name");
  print("My age is $age");
  print("My dream company name is $company_name");
}
