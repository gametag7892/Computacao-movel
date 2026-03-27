import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela nº 1',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const TelaInicial(title: 'Tela nº 1'),
    );
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key, required this.title});

  final String title;

  @override
  State<TelaInicial> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TelaInicial> {
  String mensagem = "Valor Atual: 0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Tela nº 1"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mensagem),

            ElevatedButton(
              child: const Text("Ir para Tela 2"),
              onPressed: () async {
                final resultado = Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaDetalhe(),
                  ),
                );

                if (resultado != null) {
                  setState(() {
                    mensagem = "Valor recebido: $resultado";
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TelaDetalhe extends StatelessWidget {

  const TelaDetalhe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela nº 2")),
      body: Center(child: Text("Olá")),
    );
  }
}
