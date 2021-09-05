import 'package:flutter/material.dart';

class InteractiveWidgetScreen extends StatelessWidget {
  const InteractiveWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #4 > Interactive Widget'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  initialValue: 'I can be edited',
                  validator: (value) => value == null || value.isEmpty ? 'Field is required' : null,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Go to home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
