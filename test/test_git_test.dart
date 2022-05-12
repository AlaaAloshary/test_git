import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_git/test_git.dart';

void main() {
  const MethodChannel channel = MethodChannel('test_git');

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
    expect(await TestGit.platformVersion, '42');
  });
}
