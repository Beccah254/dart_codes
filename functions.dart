// Task 1
int addTwo(int a, int b) {
  return a + b;
}

// Task 2
int subtractTwo(int a, int b) {
  return a - b;
}

// Task 3
int multiplyTwo(int a, int b) {
  return a * b;
}

// Task 4
double divideTwo(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    print('Error: Division by zero!');
    return double.nan; // Return NaN for division by zero
  }
}

// Task 5
int stringLength(String str) {
  return str.length;
}

// Task 6
dynamic getFirstElement(List list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    print('Error: Empty list!');
    return null;
  }
}

void main() {
  // Test the functions
  print('Addition: ${addTwo(5, 3)}'); // 5 + 3 = 8
  print('Subtraction: ${subtractTwo(10, 7)}'); // 10 - 7 = 3
  print('Multiplication: ${multiplyTwo(4, 6)}'); // 4 * 6 = 24
  print('Division: ${divideTwo(10, 2)}'); // 10 / 2 = 5.0
  print('String Length: ${stringLength("Hello")}'); // Length of "Hello" is 5
  print('First Element: ${getFirstElement([
        1,
        2,
        3,
        4,
        5
      ])}'); // First element of the list is 1
}
