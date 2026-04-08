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
  List<String> tasks = [];
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

  Future<void> addTask() async {
    if (controller.text.isEmpty) return;
    setState(() {
      tasks.add(controller.text);
      controller.clear();
    });
    await storage.saveTasks(tasks);
  }

  Future<void> removeTask(int index) async {
    setState(() {
      tasks.removeAt(index);
    });
    await storage.saveTasks(tasks);
  }

  // Criação de função clearTask para o exercicio 1
  Future<void> clearTask() async {
    setState(() {
      tasks.clear();
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
            ElevatedButton(onPressed: addTask, child: const Text('Adicionar')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: clearTask, child: const Text('Limpar Tudo')),
            const SizedBox(height: 10),
            if (tasks.isEmpty)
              Text("Nenhuma tarefa!"), // Criação de uma condição para mostrar uma mensagem se a lista estiver vazia (Exercicio 2)
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tasks[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => removeTask(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
