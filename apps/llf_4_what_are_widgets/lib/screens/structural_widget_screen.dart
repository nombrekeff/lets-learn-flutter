import 'package:flutter/material.dart';

class StructuralWidgetScreen extends StatelessWidget {
  const StructuralWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #4 > Structural Widget'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Element 1'),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Element 2'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Element 1'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Element 2'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Element 1'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Element 2'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Element 2'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
