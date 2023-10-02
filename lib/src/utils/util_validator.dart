import 'package:flutter/widgets.dart' show FormFieldValidator;

mixin ValidatorUtil {
  static FormFieldValidator<String> required(String message) {
    return (value) {
      if (value == null) {
        return message;
      } else if (value.isEmpty) {
        return message;
      }
    };
  }

  static FormFieldValidator<String> minValue(double min, String message) {
    return (value) => (double.parse(value!) >= 0 && double.parse(value) < min) ? message : null;
  }

  static FormFieldValidator<String> maxValue(double max, String message) {
    return (value) => (double.parse(value!) >= 0 && double.parse(value) > max) ? message : null;
  }

  static FormFieldValidator<String> minLength(int minLength, String message) {
    return (value) => (value!.isNotEmpty && value.length < minLength) ? message : null;
  }

  static FormFieldValidator<String> maxLength(int maxLength, String message) {
    return (value) => (value!.isNotEmpty && value.length > maxLength) ? message : null;
  }

  static FormFieldValidator<String> fixLength(int length, String message) {
    return (value) => (value!.isNotEmpty && value.length != length) ? message : null;
  }

  static FormFieldValidator<String> pattern(RegExp pattern, String message) {
    return (value) => (value!.isNotEmpty && !pattern.hasMatch(value)) ? message : null;
  }

  static FormFieldValidator<String> email(String message) {
    final emailPattern = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return (value) => (value!.isNotEmpty && !emailPattern.hasMatch(value)) ? message : null;
  }

  static FormFieldValidator<String> compose(List<FormFieldValidator<String>> validators) {
    return (value) {
      for (final validator in validators) {
        if (validator(value) != null) return validator(value);
      }
      return null;
    };
  }
}
