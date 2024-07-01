import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calculator_controller.dart';

class CalculatorScreen extends StatelessWidget {
  final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.number1Controller,
              decoration: InputDecoration(labelText: 'Number 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: controller.number2Controller,
              decoration: InputDecoration(labelText: 'Number 2'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => controller.add(),
                  child: Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () => controller.subtract(),
                  child: Text('Subtract'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Obx(
              () => Text(
                'Result: ${controller.result}',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}