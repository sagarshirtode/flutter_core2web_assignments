import 'dart:io';

void main() {
  print("Enter a number:");
  var x = int.parse(stdin.readLineSync()!);
  if (x != null) {
    if (x < 10) {
      print("$x is less than 10");
    } else if (x > 10) {
      print("$x is greater than 10");
    } else {
      print("$x is equal to 10");
    }
  } else {
    print("Invalid input.");
  }
}
