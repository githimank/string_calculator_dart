import 'dart:io';

import 'package:string_calculator_dart/string_calculator.dart';

void main(List<String> arguments) {
  try {
    // Prompt the user for input
    stdout.writeln('Enter numbers: ');
    String? input = stdin.readLineSync();

    // Check if input is null
    if (input == null) {
      print('No input provided. Exiting.');
      return;
    }

    // Replace literal "\n" with an actual newline character.
    input = input.replaceAll('\\n', '\n');

    int result = StringCalculator.add(input);

    print('The result is: $result');
  } catch (e) {
    print('Error: $e');
  }
}
