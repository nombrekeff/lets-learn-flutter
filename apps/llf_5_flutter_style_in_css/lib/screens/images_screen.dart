import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #5 > Images'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://avatars.githubusercontent.com/u/17043260?s=40&v=4',
              width: 50,
            ),
            Image.asset(
              'assets/keff-logo.png',
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
