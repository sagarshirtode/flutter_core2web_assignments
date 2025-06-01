import 'dart:io';

void main() {
  print("Enter a character:");
  var c = stdin.readLineSync();
  if (c != null) {
    if (c == 'a' ||
        c == 'A' ||
        c == 'e' ||
        c == 'E' ||
        c == 'i' ||
        c == 'I' ||
        c == 'o' ||
        c == 'O' ||
        c == 'u' ||
        c == 'U') {
      print("$c is a vowel.");
    } else {
      print("$c is a consonet.");
    }
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}
