/// An exception class which will help in handling the exception if occurred.
class IpAddressException implements Exception {
  String message;
  StackTrace stackTrace;

  IpAddressException(this.message) {
    stackTrace = StackTrace.current;
  }

  @override
  String toString() {
    return '$message';
  }
}