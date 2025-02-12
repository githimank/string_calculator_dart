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
      delimiterPattern = RegExp.escape(delimiterSpec);
    }

    final tokens = numbersPart.split(RegExp(delimiterPattern));
    final parsedNumbers = tokens.map((t) => int.parse(t)).toList();

    // Check for negative numbers.
    final negatives = parsedNumbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negatives not allowed ${negatives.join(", ")}');
    }

    return tokens.map((n) => int.parse(n)).fold(0, (sum, n) => sum + n);
  }
}
