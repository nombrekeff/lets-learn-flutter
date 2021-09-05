import 'package:flutter/material.dart';

class InitialExampleScreen extends StatelessWidget {
  const InitialExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #4 > Initial Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text('ListView is my parent'),
            ListTile(
              title: Text('My parent is ListTile'),
              trailing: Icon(Icons.check),
            )
          ],
        ),
      ),
    );
  }
}
