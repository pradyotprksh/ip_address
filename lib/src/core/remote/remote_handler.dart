import 'package:ip_address/ip_address.dart';
import 'package:http/http.dart' as http;

/// A device handler which will handle all the remote related work like
/// saving or getting the data.
class RemoteHandler extends NetworkHandler {
  @override
  Future<Map<String, dynamic>> getIpAddressJson() {
    throw IpAddressException('Not able to find the Ip Address.');
  }

  @override
  Future<String> getIpAddressText() async {
    try {
      if (await Utility.isNetworkAvailable()) {
        var response = await http.get('https://api64.ipify.org');
        if (response.statusCode == 200) {
          return response.body;
        } else {
          throw IpAddressException('Not able to find the Ip Address.');
        }
      } else {
        throw IpAddressException('Internet Not Available');
      }
    } catch (_) {
      throw IpAddressException('Not able to find the Ip Address.');
    }
  }
}
