import 'package:test/test.dart';
import 'package:string_calculator_dart/string_calculator.dart';

void main() {
  group('StringCalculator.add', () {
    test('returns 0 for empty string', () {
      expect(StringCalculator.add(''), equals(0));
    });
  });
}
