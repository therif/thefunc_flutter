import 'package:flutter_test/flutter_test.dart';
import 'package:thefunc_flutter/thefunc_flutter.dart';

void main() {
  test('Change To Boolean', () {
    //direct call
    expect(TheFunc().asBool('1'), true);
    expect(TheFunc().asBool('true'), true);

    //use as object declaration
    final testTheFunc = TheFunc();
    expect(testTheFunc.asBool(''), false);
    expect(testTheFunc.asBool('0'), false);
    expect(testTheFunc.asBool('false'), false);
    expect(testTheFunc.asBool('False'), false);
    expect(testTheFunc.asBool('True'), true);
    expect(testTheFunc.asBool('true'), true);
    expect(testTheFunc.asBool('1'), true);
  });

  test('Change Variable Type', () {
    //direct call
    expect(TheFunc().change(bool, ''), false);
    expect(TheFunc().change(bool, 'TRUE'), true);

    //use as object declaration
    final testTheFunc2 = TheFunc();
    expect(testTheFunc2.change(bool, ''), false);
    expect(testTheFunc2.change(bool, 'TRUE'), true);
    expect(testTheFunc2.change(String, 'One'), 'One');
    expect(testTheFunc2.change(int, '1'), 1);
  });
}
