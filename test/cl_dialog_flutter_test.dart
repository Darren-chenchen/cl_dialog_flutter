import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cl_dialog_flutter/cl_dialog_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('cl_dialog_flutter');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
