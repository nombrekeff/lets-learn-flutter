import 'package:flutter/material.dart';

class CompleteExampleScreen extends StatelessWidget {
  const CompleteExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #4 > Complete Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Hello there, by clicking the button bellow you will be redirected back to the home page',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Back to home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
