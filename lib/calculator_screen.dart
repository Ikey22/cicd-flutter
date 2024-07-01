import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calculator_controller.dart';

class CalculatorScreen extends StatelessWidget {
  final CalculatorController controller = Get.put(CalculatorController());

  CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.number1Controller,
              decoration: const InputDecoration(labelText: 'Number 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: controller.number2Controller,
              decoration: const InputDecoration(labelText: 'Number 2'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => controller.add(),
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () => controller.subtract(),
                  child: const Text('Subtract'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Obx(
              () => Text(
                'Result: ${controller.result}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}