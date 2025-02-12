class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String numbersPart = numbers;
    String delimiterPattern = r'[,\n]'; // default delimiters

    // Check for custom delimiter.
    if (numbers.startsWith('//')) {
      final newlineIndex = numbers.indexOf('\n');
      final delimiterSpec = numbers.substring(2, newlineIndex);
      numbersPart = numbers.substring(newlineIndex + 1);
      // Check if delimiter is provided inside square brackets.
      if (delimiterSpec.startsWith('[') && delimiterSpec.endsWith(']')) {
        // Extract the delimiter without the square brackets.
        final delimiter = delimiterSpec.substring(1, delimiterSpec.length - 1);
        delimiterPattern = RegExp.escape(delimiter);
      } else {
        delimiterPattern = RegExp.escape(delimiterSpec);
      }
    }

    final tokens = numbersPart.split(RegExp(delimiterPattern));
    final parsedNumbers = tokens.map((t) => int.parse(t)).toList();

    // Check for negative numbers.
    final negatives = parsedNumbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negatives not allowed ${negatives.join(", ")}');
    }

    // Ignore numbers > 1000.
    return parsedNumbers.where((n) => n <= 1000).fold(0, (sum, n) => sum + n);
  }
}
