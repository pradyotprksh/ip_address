import 'package:get_ip_address/get_ip_address.dart';
import 'package:get_ip_address/src/core/net/net.dart';
import 'package:get_ip_address/src/core/networking/network_request.dart';

class Core {
  /// Current version of this library.
  static String version = '1.0.0';

  /// The type of request.
  RequestType requestType;

  /// A network request handler which will help in finding the iP Address.
  NetworkRequest _networkRequest;

  /// The main ipAddress constructor which will be called to get the ipAddress.
  ///
  /// [requestType] : A request type which will change the response
  /// type.
  Core({this.requestType}) {
    _networkRequest = NetworkRequest();
  }

  /// Get Ip address of the system based on [requestType].
  Future<dynamic> getIpAddress() async {
    switch (requestType) {
      case RequestType.text:
        return await _networkRequest.getIpAddressText();
      case RequestType.json:
        return await _networkRequest.getIpAddressJson();
      default:
        return '0.0.0.0';
    }
  }
}
