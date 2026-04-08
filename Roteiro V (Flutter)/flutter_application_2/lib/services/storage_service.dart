import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String key = 'tasks';

  // Método para SALVAR [cite: 106]
  Future<void> saveTasks(List<String> tasks) async {
    final prefs = await SharedPreferences.getInstance(); // [cite: 108]
    await prefs.setStringList(key, tasks); // [cite: 109]
  }

  // Método para CARREGAR [cite: 110]
  Future<List<String>> loadTasks() async {
    final prefs = await SharedPreferences.getInstance(); // [cite: 111]
    return prefs.getStringList(key) ?? []; // [cite: 112, 129]
  }
}
