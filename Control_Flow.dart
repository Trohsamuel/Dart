import 'dart:io';

void main() {
  // Prompt user for a number
  stdout.write('Enter a number: ');
  String userInput = stdin.readLineSync()!;
  
  // Convert user input to a number
  try {
    int number = int.parse(userInput);
    
    // Check conditions and print messages
    if (number > 10) {
      print('Your number is greater than 10');
    } else if (number < 10) {
      print('Your number is less than 10');
    } else {
      print('Your number is equal to 10');
    }
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}
