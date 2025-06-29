//dart program5.dart
import 'dart:io';

void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    for (int j = i; j <= row; j++) {
      stdout.write("${j} ");
    }
    print("\n");
  }
}
