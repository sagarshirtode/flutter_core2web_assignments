import 'dart:io';

//dart program8.dart
void main(List<String> args) {
  for (var i = 1; i <= 4; i++) {
    for (var j = 1; j <= 4; j++) {
      stdout.write("${5 - i} ");
    }
    print("\n");
  }
}
