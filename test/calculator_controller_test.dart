import 'package:cicd_flutter/calculator_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  late CalculatorController controller;
  setUp(() {
    controller = Get.put(CalculatorController());
  });

  tearDown(() {
    Get.delete<CalculatorController>();
  });

  group('Testing our Controller', () {
    test('Initial result value is 0.0', () {
      expect(controller.result.value, 0.0);
    });

    test('Addition works', () {
      controller.number1Controller.text = '5';
      controller.number2Controller.text = '9';
      controller.add();
      expect(controller.result.value, 14.0);
    });

    test('Subtraction works', () {
      controller.number1Controller.text = '5';
      controller.number2Controller.text = '9';
      controller.subtract();
      expect(controller.result.value, -4.0);
    });
  });
}
