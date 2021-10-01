import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  final bool isComplete;
  final String label;

  const TodoListItem({
    Key? key,
    this.isComplete = false,
    this.label = 'TODO',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Icon(isComplete ? Icons.check : Icons.close),
        ],
      ),
    );
  }
}
