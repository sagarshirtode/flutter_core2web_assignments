//dart program7.dart
import 'dart:io';

void main() {
  int row = 5;
  int count = 1;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("${count} ");
      count++;
    }
    count++;
    print("\n");
  }
}
