void main() {
  var counter = 0;
  for (var i = 1; i <= 1000; i++) {
    if (counter == 10) {
      i = 1000;
    } else {
      if (i.toString().length == 3) {
        counter++;
        print(i);
      }
    }
  }
}
