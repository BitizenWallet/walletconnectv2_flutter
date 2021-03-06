import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:walletconnectv2_flutter/walletconnectv2_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('walletconnectv2_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Walletconnectv2Flutter.platformVersion, '42');
  });
}
