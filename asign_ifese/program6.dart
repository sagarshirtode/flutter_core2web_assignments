import 'dart:io';

void main() {
  print("Enter a number in range  0 to 5");
  var num = int.parse(stdin.readLineSync()!);
  if (num != null) {
    if (num >= 0 && num <= 5) {
      if (num == 0) {
        print("Zero");
      } else if (num == 1) {
        print("One");
      } else if (num == 2) {
        print("Two");
      } else if (num == 3) {
        print("Three");
      } else if (num == 4) {
        print("Four");
      } else if (num == 5) {
        print("Five");
      }
    } else {
      print("Invalid input. Please enter a number between 0 and 5.");
    }
  } else {
    print("Invalid input.");
  }
}
