import 'core.dart';

class IpAddress extends Core {
  /// Current version of this library.
  static String version = Core.version;

  /// The type of request.
  RequestType requestType;

  /// The main ipAddress constructor which will be called to get the ipAddress.
  ///
  /// [requestType] : An optional request type which will change the response
  /// type based on the [requestType] given by the user.
  /// Default value is [RequestType.text].
  IpAddress({this.requestType = RequestType.text})
      : super(requestType: requestType);

  /// Get ip address depending on the [requestType].
  Future<dynamic> getIpAddress() {
    return super.getIpAddress();
  }
}
