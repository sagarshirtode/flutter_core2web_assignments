import 'dart:io';

void main() {
  print("Enter a age:");
  int? age = int.parse(stdin.readLineSync()!);
  if (age != null) {
    if (age >= 18) {
      print("You can cast avote.");
    } else {
      print("You can't cast vote.");
    }
  } else {
    print("Invalid input.");
  }
}
