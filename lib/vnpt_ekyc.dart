
import 'dart:async';

import 'package:flutter/services.dart';

class VnptEkyc {
  static const MethodChannel _channel =
      const MethodChannel('vnpt_ekyc');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get openEKYC async {
    return await _channel.invokeMethod('startEKYC');
  }
}
