import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String key = 'tasks';

  // Criação da função clearTasks para o exercicio 1
  Future<void> clearTasks() async {
    final perfs = await SharedPreferences.getInstance();
    await perfs.clear();
  }

  Future<void> saveTasks(String tasks) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, tasks);
  }

  Future<String> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }
}
