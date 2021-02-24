import 'package:get_ip_address/get_ip_address.dart';

/// Network requester which will get the data from the remote.
class NetworkRequest extends NetworkHandler {
  /// A remote handler which will handle the remote calls.
  RemoteHandler _remoteHandler;

  NetworkRequest() {
    _remoteHandler = RemoteHandler();
  }

  @override
  Future<Map<String, dynamic>> getIpAddressJson() async {
    try {
      var data = await _remoteHandler.getIpAddressText();
      return {'ip': data};
    } catch(_) {
      throw IpAddressException('Not able to find the Ip Address.');
    }
  }

  @override
  Future<String> getIpAddressText() async {
    try {
      return await _remoteHandler.getIpAddressText();
    } catch(_) {
      throw IpAddressException('Not able to find the Ip Address.');
    }
  }
}
