import 'package:flutter/material.dart';

class LayoutCenterExample extends StatelessWidget {
  const LayoutCenterExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #5 > Layout Center'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text('I am a centered'),
        ),
      ),
    );
  }
}
