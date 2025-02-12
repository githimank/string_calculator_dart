import 'dart:io';

import 'package:string_calculator_dart/string_calculator.dart';

void main(List<String> arguments) {
  try {
    // Prompt the user for input
    stdout.write('Enter numbers: ');
    String? input = stdin.readLineSync();

    // Check if input is null or empty
    if (input == null || input.isEmpty) {
      print('No input provided. Exiting.');
      return;
    }

    int result = StringCalculator.add(input);

    print('The result is: $result');
  } catch (e) {
    print('Error: $e');
  }
}
