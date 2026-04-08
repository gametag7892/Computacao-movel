import 'package:flutter/material.dart';
import 'package:flutter_application_2/services/storage_service.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  final List<String> _tarefas = [];
  final TextEditingController _controller = TextEditingController();
  final StorageService storage = StorageService();

  void _adicionarTarefa() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _tarefas.add(_controller.text);
        _controller.clear(); // Limpa o campo após adicionar
      });
    }
  }

  void _removerTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
  }

  Future<void> clearTasks() async {
    setState(() {
      _tarefas.clear();
    });
    await storage.saveTasks(_tarefas);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tarefas')),
      body: Column(
        children: [
          const SizedBox(height: 20), 

          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Nova tarefa',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 10),

          IconButton(
            icon: const Icon(Icons.delete_sweep),
            onPressed: clearTasks,
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: _adicionarTarefa,
            child: const Text('Adicionar'),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: _tarefas.isEmpty
                ? const Center(child: Text("Sua lista está vazia!"))
                : ListView.builder(
                    itemCount: _tarefas.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(_tarefas[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _removerTarefa(index),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
