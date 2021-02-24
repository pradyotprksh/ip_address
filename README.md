# ip_address

A flutter package to get the system ip address

## Getting Started

Add the dependency in your `pubspec.yaml` file

`ip_address: 0.0.1`

Then run,

`flutter pub get` or `pub get`.

## How to use?

Add

`var ipAddress = IpAddress(requestType: RequestType.json);`

`requestType` is optional, default value is `RequestType.text`.

Now, to get the IpAddress

`dynamic data = await ipAddress.getIpAddress();`

So, depending on `requestType` the ipAddress will be given.

The check for network connectivity is added. If any error occured it will throw

`IpAddressException`.