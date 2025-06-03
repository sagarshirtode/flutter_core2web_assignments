import 'dart:io';

void main() {
  var factorial = 1;
  print('Enter a number:');
  int input = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= input; i++) {
    factorial = factorial * i;
  }
  print(factorial);
}
