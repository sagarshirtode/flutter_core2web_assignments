import 'dart:io';

//dart program9.dart
void main(List<String> args) {
  for (var i = 1; i <= 4; i++) {
    for (var j = 1; j <= 4; j++) {
      if (i == 1) {
        stdout.write("${j} ");
      } else {
        stdout.write("${j + i} ");
      }
    }
    print("\n");
  }
}
