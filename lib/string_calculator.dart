class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    // If the input is a single number
    if (!numbers.contains(',') && !numbers.contains('\n')) {
      return int.parse(numbers);
    }

    return 0;
  }
}
