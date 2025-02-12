class StringCalculator {

  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    // If the input is a single number
    if (!numbers.contains(',') && !numbers.contains('\n')) {
      return int.parse(numbers);
    }


    String numbersPart = numbers;
    String delimiterPattern = r'[,\n]'; // default delimiters

    // Check for custom delimiter.
    if (numbers.startsWith('//')) {
      final newlineIndex = numbers.indexOf('\n');
      // The delimiter is the character(s) between '//' and the newline.
      final delimiterSpec = numbers.substring(2, newlineIndex);
      numbersPart = numbers.substring(newlineIndex + 1);

      // For now, assume a single-character delimiter (without square brackets).
      delimiterPattern = RegExp.escape(delimiterSpec);
    }

    // Split on comma or newline.
    List<String> tokens = numbersPart.split(RegExp(delimiterPattern));

    return tokens.map((n) => int.parse(n)).fold(0, (sum, n) => sum + n);
  }
}
