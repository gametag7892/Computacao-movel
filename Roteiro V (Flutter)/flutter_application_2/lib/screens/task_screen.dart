import 'package:flutter/material.dart';
import '../services/storage_service.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final TextEditingController controller = TextEditingController();
  final StorageService storage = StorageService();
  String tasks = "";
  String ultimaTasks = "";

  @override
  void initState() {
    super.initState();
    loadTasks();
  }

  Future<void> loadTasks() async {
    final loadedTasks = await storage.loadTasks();
    setState(() {
      tasks = loadedTasks;
    });
  }

  Future<void> addTask(String a) async {
    if (controller.text.isEmpty) return;
    setState(() {
      tasks += a;
      controller.clear();
    });
    await storage.saveTasks(tasks);
  }

  // Criação de função clearTask para o exercicio 1
  Future<void> clearTask() async {
    setState(() {
      tasks = "";
    });
    await storage.clearTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tarefas')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Nova tarefa',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => addTask("Pagina A"),
              child: const Text('Pagina A'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => addTask("Pagina B"),
              child: const Text('Pagina B'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => addTask("Pagina C"),
              child: const Text('Pagina C'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: clearTask,
              child: const Text('Limpar Tudo'),
            ),
            const SizedBox(height: 10),
            if (tasks.isEmpty)
              Text(
                "Nenhuma tarefa!",
              ), // Criação de uma condição para mostrar uma mensagem se a lista estiver vazia (Exercicio 2)
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
