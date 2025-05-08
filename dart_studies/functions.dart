void addWithNamedParams({num1, num2}) {
  print(num1 + num2);
}

void addWithExplicitTypesParams(int num1, int num2) {
  print(num1 + num2);
}

void demo() {
  addWithNamedParams(num2: 20, num1: 10);
  addWithExplicitTypesParams(10, 20);
}

void main() {
  demo();
}