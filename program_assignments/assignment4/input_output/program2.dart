import 'dart:io';

void main() {
  print("Enter number :1");
  int number1 =
      int.parse(stdin.readLineSync()!); // Convert the input to an integer
  print("Enter number :2");
  int number2 =
      int.parse(stdin.readLineSync()!); // Convert the input to an integer

  print("Sum of two number is ${number1 + number2}");
}
