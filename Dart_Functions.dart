// Task 1
int addTwo(int num1, int num2) {
  return num1 + num2;
}

// Task 2
int subtractTwo(int num1, int num2) {
  return num1 - num2;
}

// Task 3
int multiplyTwo(int num1, int num2) {
  return num1 * num2;
}

// Task 4
double? divideTwo(int num1, int num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print("Error: Cannot divide by zero");
    return null;
  }
}

// Task 5
int stringLength(String inputString) {
  return inputString.length;
}

// Task 6
dynamic getFirstElement(List<dynamic> inputList) {
  if (inputList.isNotEmpty) {
    return inputList[0];
  } else {
    print("Error: The list is empty");
    return null;
  }
}

void main() {
  // Example usage of the functions
  print("Task 1: ${addTwo(3, 4)}");
  print("Task 2: ${subtractTwo(8, 5)}");
  print("Task 3: ${multiplyTwo(2, 6)}");
  print("Task 4: ${divideTwo(10, 2)}");
  print("Task 5: ${stringLength("Hello, Dart!")}");
  print("Task 6: ${getFirstElement([10, 20, 30])}");
}
