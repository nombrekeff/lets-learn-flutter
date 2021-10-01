import 'package:flutter/material.dart';

class LayoutColumnExample extends StatelessWidget {
  const LayoutColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #5 > Layout Column'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('I am an item'),
            Text('Me too, and will be placed below the previous item'),
          ],
        ),
      ),
    );
  }
}
