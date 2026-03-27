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
      title: 'Tela Inicial',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const TelaInicial(title: 'Tela Incial'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Tela Inicial"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Você está na Tela Inicial"),
            ElevatedButton(
              child: const Text("Ir para Detalhe"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaDetalhe()),
                );
              },
            ),
          ],
        )
      ),
    );
  }
}

class TelaDetalhe extends StatelessWidget {
  const TelaDetalhe({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Tela de Detalhe")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Você está na Tela de Detalhe"),
            ElevatedButton(
              child: const Text("Voltar"),
              onPressed: () {
                Navigator.pop(context);
              },
            ), 
          ],
        ),
      ),
    );
  }
}