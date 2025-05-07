import 'dart:io';

void main() {
  print("Enter number 1:");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter number 1:");
  int number2 = int.parse(stdin.readLineSync()!);

  number1 = number1 + number2;
  number2 = number1 - number2;
  number1 = number1 - number2;

  print("Number 1 is: $number1");
  print("Number 2 is: $number2");
}
