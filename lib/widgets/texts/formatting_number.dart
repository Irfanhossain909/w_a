import 'dart:developer';

String formattingNumber(dynamic number) {
  try {
    if (number == null || number.runtimeType == num) return "";
    if (number < 1000) {
      return number.toString();
    } else if (number >= 1000 && number < 2000) {
      return '1K+';
    } else if (number >= 1000 && number < 1000000) {
      double result = number / 1000;
      return '${result.toStringAsFixed(1)}K+';
    } else if (number >= 1000000 && number < 2000000) {
      return '1M+';
    } else if (number >= 1000000 && number < 1000000000) {
      double result = number / 1000000;
      return '${result.toStringAsFixed(1)}M+';
    } else if (number >= 1000000000 && number < 2000000000) {
      return '1B+';
    } else if (number >= 1000000000) {
      double result = number / 1000000000;
      return '${result.toStringAsFixed(1)}B+';
    } else {
      return number.toString(); // Fallback
    }
  } catch (e) {
    log("error form formatting number : $e");
    return '';
  }
}
