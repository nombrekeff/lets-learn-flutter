import 'package:flutter/material.dart';
import 'package:llf_4_what_are_widgets/widgets/todo_list_item_stateful.dart';

class CustomStatefulWidgetScreen extends StatelessWidget {
  const CustomStatefulWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LLF #4 > Custom Widget'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: const [
                TodoItemStateful(
                  label: 'Make coffee',
                  isComplete: true,
                ),
                TodoItemStateful(
                  label: 'Drink it',
                  isComplete: true,
                ),
                TodoItemStateful(
                  label: 'Sleep',
                  isComplete: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
