class StringCalculator {

  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    // If the input is a single number
    if (!numbers.contains(',') && !numbers.contains('\n')) {
      return int.parse(numbers);
    }

    // Split on comma or newline.
    List<String> tokens = numbers.split(RegExp(r'[,\n]'));
    return tokens.map((n) => int.parse(n)).fold(0, (sum, n) => sum + n);
  }
}
