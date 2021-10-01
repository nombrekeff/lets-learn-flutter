import 'package:flutter/material.dart';

class TodoItemStateful extends StatefulWidget {
  final bool isComplete;
  final String label;
  final ValueChanged<bool?>? onChanged;

  const TodoItemStateful({
    Key? key,
    this.isComplete = false,
    this.label = 'Empty',
    this.onChanged,
  }) : super(key: key);

  @override
  _TodoItemStatefulState createState() => _TodoItemStatefulState();
}

class _TodoItemStatefulState extends State<TodoItemStateful> {
  bool? isComplete = false;

  @override
  void initState() {
    isComplete = widget.isComplete;
    super.initState();
  }

  void _completeStateChanged(bool? newState) {
    setState(() {
      isComplete = newState;
    });
    if (widget.onChanged != null) widget.onChanged!(newState);
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        widget.label,
        style: TextStyle(
          decoration: isComplete == true ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      onChanged: _completeStateChanged,
      value: isComplete,
    );
  }
}

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
