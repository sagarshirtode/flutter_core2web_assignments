import 'dart:io';

void main() {
  print("Enter principal amount (Rs):");
  int princlipalAmount =
      int.parse(stdin.readLineSync()!); // Convert the input to an integer
  print("Enter rate of intrest(%):");
  int rateOfIntrest =
      int.parse(stdin.readLineSync()!); // Convert the input to an integer
  print("Enter time (In years):");
  int time =
      int.parse(stdin.readLineSync()!); // Convert the input to an integer
  // Formula for simple intrest: (P*R*T)/100
  double simple_intrest = (princlipalAmount * rateOfIntrest * time) / 100;
  print("Simple intrest is $simple_intrest");
}
