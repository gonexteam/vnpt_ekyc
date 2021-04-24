import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vnpt_ekyc/vnpt_ekyc.dart';

void main() {
  const MethodChannel channel = MethodChannel('vnpt_ekyc');

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
    expect(await VnptEkyc.platformVersion, '42');
  });
}
