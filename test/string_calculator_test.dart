import 'package:test/test.dart';
import 'package:string_calculator_dart/string_calculator.dart';

void main() {
  group('StringCalculator.add', () {

    // Empty String
    test('returns 0 for empty string', () {
      expect(StringCalculator.add(''), equals(0));
    });

    // Single Number
    test('returns the number for a single number input', () {
      expect(StringCalculator.add('1'), equals(1));
    });
  });
}
