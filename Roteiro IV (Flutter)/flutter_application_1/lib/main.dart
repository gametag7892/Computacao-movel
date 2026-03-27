import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela Inicial")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LifeCycleScreen()),
            );
          },
          child: const Text("Abrir a outra tela"),
        ),
      ),
    );
  }
}

class LifeCycleScreen extends StatefulWidget {
  const LifeCycleScreen({super.key});
  @override
  State<LifeCycleScreen> createState() => _LifeCycleScreenState();
}

class _LifeCycleScreenState extends State<LifeCycleScreen> {
  bool mensagemVisivel = true;
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    controller.text = "Bom dia!";
    print("Tela iniciada");
  }

  @override
  void dispose() {
    print("Tela finalizada");
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Tela reconstruída");
    return Scaffold(
      appBar: AppBar(title: const Text("Ciclo de Vida")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Digite algo",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  mensagemVisivel = mensagemVisivel == true ? false : true;
                  controller.text = mensagemVisivel == true ? "Bom dia!" : "";
                });
              },
              child: const Text("Visualizar/Desvisualizar"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Fechar tela"),
            ),
          ],
        ),
      ),
    );
  }
}
