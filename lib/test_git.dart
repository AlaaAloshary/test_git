
import 'dart:async';

import 'package:flutter/services.dart';

class TestGit {
  static const MethodChannel _channel = MethodChannel('test_git');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
