import 'dart:io';

//dart program3.dart
void main(List<String> args) {
  // case 1
  var rows = 3;
  var columns = 3;
  // case 2
  //var rows = 4;
  //var columns = 4;
  var count = 0;
  for (var i = 0; i < rows; i++) {
    for (var j = 0; j < columns; j++) {
      stdout.write("${count}  ");
    }
    if (count == 1) {
      count = 0;
    } else {
      count = 1;
    }
    print("\n");
  }
}
