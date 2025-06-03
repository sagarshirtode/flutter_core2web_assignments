void main() {
  List<String> classOfDay = ['A', 'B', 'C', 'D', 'E'];
  for (var i = 0; i < classOfDay.length; i++) {
    if ((i + 1) % 2 == 0) {
      print(classOfDay[i]);
    }
  }
}
