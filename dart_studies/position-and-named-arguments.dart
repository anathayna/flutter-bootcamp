void addPositional(a, b) {
  print(a + b);
}

void addNamed({a, b}) {
  print(a + b);
}

void addOptional(a, [b]) {
  print(a + b);
}

void addDefaultValue(a, [b = 5]) {
  print(a + b);
}

void addNamedDefaultValue({a, b = 5}) {
  print(a + b);
}

void addRequired({required a, required b}) {
  print(a + b);
}

void main() {
  addPositional(5, 10);
  addNamed(b: 20, a: 10);
  addDefaultValue(10);
  addDefaultValue(10, 6);
  addNamedDefaultValue(a: 10);
  addRequired(a: 10, b: 20);
}