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
            ElevatedButton(
              child: const Text("Enviar Nome"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaDetalhe(nome: "Maria"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TelaDetalhe extends StatelessWidget {
  final String nome;

  const TelaDetalhe({super.key, required this.nome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela nº 2")),
      body: Center(child: Text("Olá, $nome")),
    );
  }
}

// Perguntas para discutir

// ● Por que usamos construtor?

/*
    R: Para passar os dados para a proxima tela, herdando a string nome da tela anterior
*/

// ● Por que Tela2 pode ser Stateless?

/*
    R: Porque o dado que ela exibe não sofrerá alterações por eventos internos à propria tela após sua construção.
*/
// ● O dado pode mudar depois que a tela é criada?

/*
    R: Não diretamente dentro da Tela2, pois a váriavel definida como final é imutavel para aquela instância do Widget.
*/
