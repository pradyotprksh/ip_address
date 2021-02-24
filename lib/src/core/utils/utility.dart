import 'package:data_connection_checker/data_connection_checker.dart';

/// A chunk of methods which can be used to
/// the common operations performed everywhere
/// in the application.
abstract class Utility {
  /// Returns future bool value depending on the internet
  /// connectivity.
  static Future<bool> isNetworkAvailable() async =>
      await DataConnectionChecker().hasConnection;
}
