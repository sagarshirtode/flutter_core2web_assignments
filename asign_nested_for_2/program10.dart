import 'dart:io';

//dart program10.dart
void main(List<String> args) {
  for (var i = 1; i < 4; i++) {
    for (var j = 1; j < 4; j++) {
      if (j == 1) {
        stdout.write("${i}  ");
      } else if (j == 2) {
        stdout.write("${i + j}  ");
      } else {
        stdout.write("${(i + j) + 1}  ");
      }
    }
    print("\n");
  }
}
