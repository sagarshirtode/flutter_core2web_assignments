//dart program4.dart
import 'dart:io';

void main() {
  int count = 10;
  int row = 4;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("${count} ");
      count--;
    }
    print("\n");
  }
}
