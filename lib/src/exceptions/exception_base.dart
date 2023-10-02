abstract class BaseException implements Exception {
  const BaseException([this.feature, this.message]);

  final String? message;
  final String? feature;

  @override
  String toString() {
    if (message is String) return '$feature - $message';
    return feature!;
  }
}
