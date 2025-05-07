import 'dart:io';

void main() {
  print("Enter the number :1");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter the number :2");
  int number2 = int.parse(stdin.readLineSync()!);

  if (number1 > number2) {
    print("$number1 is maximum than $number2 ");
  } else if (number1 < number2) {
    print("$number2 is maximum than $number1 ");
  } else {
    print("Both are equal");
  }
}
