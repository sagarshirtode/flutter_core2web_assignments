import 'dart:io';

void main() {
  print("Enter a month number (1-12):");
  var month = int.parse(stdin.readLineSync()!);
  if (month != null) {
    if (month >= 1 && month <= 12) {
      if (month == 1) {
        print("January has 31 days");
      } else if (month == 2) {
        print("February has 28 days");
      } else if (month == 3) {
        print("March has 31 days");
      } else if (month == 4) {
        print("April has 30 days");
      } else if (month == 5) {
        print("May has 31 days");
      } else if (month == 6) {
        print("June has 30 days");
      } else if (month == 7) {
        print("July has 31 days");
      } else if (month == 8) {
        print("August has 31 days");
      } else if (month == 9) {
        print("September has 30 days");
      } else if (month == 10) {
        print("October has 31 days");
      } else if (month == 11) {
        print("November has 30 days");
      } else if (month == 12) {
        print("December has 31 days");
      }
    } else {
      print("Invalid month");
    }
  } else {
    print("Invalid input. Please enter a valid character.");
  }
}
