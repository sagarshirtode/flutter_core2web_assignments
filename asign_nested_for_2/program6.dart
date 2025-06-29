import 'dart:io';

//dart program6.dart
void main(List<String> args) {
  var count = 1;
  for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 3; j++) {
      if (i == 1 && j == 1) {
        stdout.write("1 ");
      } else {
        count = count + 2;
        stdout.write("$count ");
      }
    }
    print("\n");
  }
}
