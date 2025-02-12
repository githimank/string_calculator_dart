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
        // Use a RegExp to extract all delimiters.
        final regex = RegExp(r'\[(.*?)\]');
        final matches = regex.allMatches(delimiterSpec);
        final delimiters = matches.map((m) => m.group(1)!).toList();
        // Join delimiters with | to create a splitting pattern.
        delimiterPattern = delimiters.map(RegExp.escape).join('|');
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
