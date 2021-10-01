import 'package:flutter/material.dart';

class DecorationsScreen extends StatelessWidget {
  const DecorationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #5 > Decoration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('I have rounded corners'),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: const Text('I have rounded corners only in the top'),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: const Text('I have a border'),
                ),
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('I have a border and radius'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.yellow, Colors.red],
                  stops: [0, 1],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('I have a gradient as a background'),
            ),
          ],
        ),
      ),
    );
  }
}
