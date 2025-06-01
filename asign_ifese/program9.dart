import 'dart:io';

void main() {
  print("Enter the stand number:");
  int? x = int.parse(stdin.readLineSync()!);

  if (x == 1) {
    print("Please pay 2000 rupees.");
  } else if (x == 2) {
    print("Please pay 3000 rupees.");
  } else if (x == 3) {
    print("Please pay 7000 rupees.");
  } else {
    print("Please pay 2500 rupees.");
  }
}
