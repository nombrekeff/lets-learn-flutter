import 'package:flutter/material.dart';
import 'package:llf_4_what_are_widgets/widgets/todo_list_item.dart';

class CustomWidgetScreen extends StatelessWidget {
  const CustomWidgetScreen({Key? key}) : super(key: key);

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
                TodoListItem(label: 'Make coffee', isComplete: true),
                TodoListItem(label: 'Drink it', isComplete: true),
                TodoListItem(label: 'Sleep', isComplete: false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
