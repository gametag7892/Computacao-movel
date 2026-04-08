import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final VoidCallback onDelete;

  const TaskTile({super.key, required this.taskName, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: onDelete,
      ),
    );
  }
}