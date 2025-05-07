import 'dart:io';

void main() {
  print("Enter radius:");
  double radius = double.parse(stdin.readLineSync()!);
  double areaOfCircle = 3.14 * radius * radius;
  print("Area of Circle is $areaOfCircle");
}
