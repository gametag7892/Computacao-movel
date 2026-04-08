import 'package:flutter/material.dart';
import 'package:flutter_application_9/widget/task_tile.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final List<String> tarefa = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Produtos")),
      body: Center(
        child: ListView.builder(
          itemCount: tarefa.length,
          itemBuilder: (context, index) {
            return ListTile(
              nome: tarefa[index],
            );
          },
        ),
      ),
    );
  }
}
