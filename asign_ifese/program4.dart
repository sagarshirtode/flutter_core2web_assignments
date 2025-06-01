import 'dart:io';

void main() {
  print("Enter a number:");
  var x = int.parse(stdin.readLineSync()!);
  if (x != null) {
    if (x > 0) {
      print("$x is a positive number.");
    } else if (x < 0) {
      print("$x is a negative number.");
    } else {
      print("$x is zero.");
    }
  } else {
    print("Invalid input.");
  }
}
