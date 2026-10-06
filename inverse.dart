void main() {
  for (int y = 20; y >= 1; y--) {
    String result = "";
    for (int x = y; x >= 1; x--) {
      result += "*";
    }
    print(result);
  }
}
