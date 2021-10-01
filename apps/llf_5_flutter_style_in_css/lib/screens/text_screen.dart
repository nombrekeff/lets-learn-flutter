import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #5 > Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Flutter is a type of arrhythmia'),
            const Text(
              'Flutter is a type of arrhythmia',
              style: TextStyle(color: Colors.red),
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Flutter is',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: ' a type of arrhythmia',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
