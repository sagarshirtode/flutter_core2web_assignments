void main() {
  List<int> numbers = [10, 20, 30, 40];
  var element = 30;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] == element) {
      print('${element} exists in the list');
      return;
    }
  }
}
