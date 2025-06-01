import 'dart:io';

void main() {
  print("Enter the units:");
  int? units = int.parse(stdin.readLineSync()!);

  if (units <= 89) {
    print("No charge");
  } else if (units >= 90 && units <= 180) {
    double bill = units * 6;
    print("$bill");
  } else if (units > 180 && units <= 250) {
    double bill = units * 10 + (90 * 6);
    print("$bill");
  } else if (units > 250 && units <= 500) {
    double bill = units * 15 + (90 * 6) + (70 * 10);
    print("$bill");
  } else {
    double bill = units * 20 + (90 * 6) + (70 * 10) + (250 * 15);
    print("$bill");
  }
}
