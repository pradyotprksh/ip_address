import 'package:flutter_test/flutter_test.dart';
import 'package:get_ip_address/get_ip_address.dart';

void main() {
  IpAddress ipStringAddress;
  IpAddress ipMapAddress;

  group('Check for Ip Address', () {
    setUp(() {
      ipStringAddress = IpAddress();
      ipMapAddress = IpAddress(requestType: RequestType.json);
    });

    test('String Ip Address', () async {
      var data = await ipStringAddress.getIpAddress();
      expect(true, data is String);
    });

    test('Map Ip Address', () async {
      var data = await ipMapAddress.getIpAddress();
      expect(true, data is Map);
    });
  });
}