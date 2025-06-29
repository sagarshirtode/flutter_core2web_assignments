//dart program5.dart

import 'dart:io';

void main() {
  int num = 1;
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      stdout.write('${num + 2 * col}  ');
    }
    print('');
    num += 2;
  }
}
