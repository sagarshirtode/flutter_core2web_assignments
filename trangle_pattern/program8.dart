//dart program8.dart
import 'dart:io';

void main() {
  int row = 4;
  int count = 0;
  for (int i = 1; i <= row; i++) {
    count = i;
    for (int j = 1; j <= i; j++) {
      if (j % 2 == 0 && i % 2 == 0) {
        stdout.write("${count * count} ");
      } else {
        stdout.write("${count * count * count} ");
      }
      count++;
    }
    print("\n");
  }
}
