void main() {
  List<int> numbers = [10, 20, 30, 40];
  var count = 0;
  for (var i = 0; i < numbers.length; i++) {
    count = count + numbers[i];
  }
  print('Average : ${ count / numbers.length }');
}
