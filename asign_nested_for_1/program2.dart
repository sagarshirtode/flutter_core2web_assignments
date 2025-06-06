//dart program2.dart
import 'dart:io';

void main(List<String> args) {
  for (var i = 1; i <= 4; i++) {
    for (var j = 1; j <= 4; j++) {
      stdout.write("${j + 3}  ");
    }
    print("\n");
  }
}
