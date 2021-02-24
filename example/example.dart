import 'package:ip_address/ip_address.dart';

void main() async {
  try {
    /// Initialize Ip Address
    var ipAddress = IpAddress(requestType: RequestType.json);
    /// Get the IpAddress based on requestType.
    dynamic data = await ipAddress.getIpAddress();
    print(data.toString());
  } on IpAddressException catch (exception) {
    /// Handle the exception.
    print(exception.message);
  }
}