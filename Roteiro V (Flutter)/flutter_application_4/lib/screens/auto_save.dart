import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AutoSaveForm extends StatefulWidget {
  const AutoSaveForm({super.key});
  @override
  State<AutoSaveForm> createState() => _AutoSaveFormState();
}

class _AutoSaveFormState extends State<AutoSaveForm> {
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nameCtrl.text = prefs.getString('saved_name') ?? ""; 
      _emailCtrl.text = prefs.getString('saved_email') ?? "";
    });
  }

  _persist(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Auto-save Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameCtrl,
              decoration: const InputDecoration(labelText: "Nome"),
              onChanged: (val) => _persist('saved_name', val), 
            ),
            TextField(
              controller: _emailCtrl,
              decoration: const InputDecoration(labelText: "Email"),
              onChanged: (val) => _persist('saved_email', val),
            ),
          ],
        ),
      ),
    );
  }
}