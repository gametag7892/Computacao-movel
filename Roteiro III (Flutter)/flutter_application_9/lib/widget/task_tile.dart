import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String nome;
  final String status;

  const TaskTile({super.key, required this.nome, required this.status});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        nome,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(status),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
