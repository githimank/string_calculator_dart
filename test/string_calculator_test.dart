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

    test('sums two comma-separated numbers', () {
      expect(StringCalculator.add('1,2'), equals(3));
    });

    test('sums unknown number of values', () {
      expect(StringCalculator.add('1,2,3,4'), equals(10));
    });

    test('allows new line as delimiter', () {
      expect(StringCalculator.add('1\n2,3'), equals(6));
    });

    test('supports custom single-character delimiter', () {
      expect(StringCalculator.add('//;\n1;2'), equals(3));
    });

  });
}
