import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LastPageScreen extends StatefulWidget {
  const LastPageScreen({super.key});
  @override
  State<LastPageScreen> createState() => _LastPageScreenState();
}

class _LastPageScreenState extends State<LastPageScreen> {
  String _selectedPage = "Nenhuma";

  @override
  void initState() {
    super.initState();
    _loadLastPage(); // Carrega ao iniciar [cite: 224, 254]
  }

  _loadLastPage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedPage = prefs.getString('last_page') ?? "Nenhuma";
    });
  }

  _savePage(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('last_page', name); // Salva a escolha [cite: 50, 251]
    setState(() => _selectedPage = name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Página Atual: $_selectedPage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ["Página A", "Página B", "Página C"].map((page) {
            return ElevatedButton(
              onPressed: () => _savePage(page),
              child: Text(page),
            );
          }).toList(),
        ),
      ),
    );
  }
}
