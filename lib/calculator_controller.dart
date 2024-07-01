import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var result = 0.0.obs;

  final number1Controller = TextEditingController();
  final number2Controller = TextEditingController();

  void add() {
    double num1 = double.tryParse(number1Controller.text) ?? 0;
    double num2 = double.tryParse(number2Controller.text) ?? 0;
    result.value = num1 + num2;
  }

  void subtract() {
    double num1 = double.tryParse(number1Controller.text) ?? 0;
    double num2 = double.tryParse(number2Controller.text) ?? 0;
    result.value = num1 - num2;
  }

  @override
  void onClose() {
    number1Controller.dispose();
    number2Controller.dispose();
    super.onClose();
  }
}