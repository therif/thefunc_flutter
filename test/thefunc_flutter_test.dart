import 'package:flutter_test/flutter_test.dart';
import 'package:thefunc_flutter/thefunc_flutter.dart';

void main() {
  test('Change To Boolean', () {
    final testTheFunc = TheFunc();
    expect(testTheFunc.keBoolean(''), false);
    expect(testTheFunc.keBoolean('0'), false);
    expect(testTheFunc.keBoolean('false'), false);
    expect(testTheFunc.keBoolean('False'), false);
    expect(testTheFunc.keBoolean('True'), true);
    expect(testTheFunc.keBoolean('true'), true);
    expect(testTheFunc.keBoolean('1'), true);
  });

  test('Change Variable Type', () {
    final testTheFunc2 = TheFunc();
    expect(testTheFunc2.changeAs(bool, ''), false);
    expect(testTheFunc2.changeAs(bool, 'TRUE'), true);
    expect(testTheFunc2.changeAs(String, 'One'), 'One');
    expect(testTheFunc2.changeAs(int, '1'), 1);
  });
}
