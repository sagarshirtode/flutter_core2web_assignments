void main() {
  List<int> numbers = [45, 67, 23, 89, 55, 34];
  var count = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] > 50) {
      count++;
    }
  }
  print('Count of numbers > 50 : ${count}');
}
