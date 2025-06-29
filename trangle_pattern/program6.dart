//dart program6.dart
import 'dart:io';

void main() {
  int row = 4;
  int count = 0;
  for (int i = 1; i <= row; i++) {
    count = i;
    for (int j = 1; j <= i; j++) {
      stdout.write("${count} ");
      count++;
    }
    print("\n");
  }
}
