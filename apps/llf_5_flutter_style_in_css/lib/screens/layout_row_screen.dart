import 'package:flutter/material.dart';

class LayoutRowExample extends StatelessWidget {
  const LayoutRowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #5 > Layout Row'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: const [
            Text('I am an item'),
            Text('Me too'),
          ],
        ),
      ),
    );
  }
}
