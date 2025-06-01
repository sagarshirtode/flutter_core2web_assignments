import 'dart:io';

void main() {
  print("Enter a number:");
  var x = int.parse(stdin.readLineSync()!);
  if (x != null) {
    if (x % 2 == 0) {
      print("$x is an even no");
    } else {
      print("$x is an odd no");
    }
  } else {
    print("Invalid input.");
  }
}
