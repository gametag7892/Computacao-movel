import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tela1(),
    );
  }
}

class Tela1 extends StatefulWidget {
  const Tela1({super.key});
  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {

  String mensagem = "Nenhum valor recebido";
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text("Tela 1")),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              mensagem, 
              style: const TextStyle(fontSize: 18), 
            ),

            const SizedBox(height: 20),

            ElevatedButton(

              child: const Text("Ir para Tela 2"),

              onPressed: () async {
                final resultado = await Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const Tela2(),
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

class Tela2 extends StatelessWidget {
  const Tela2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior
      appBar: AppBar(title: const Text("Tela 2")),
      body: Center(
        // Botão que envia um valor de volta
        child: Column( 
          children: [
            ElevatedButton(
              child: const Text("Enviar 20"),
              onPressed: () {
                Navigator.pop(context, 20);
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text("Enviar 10"),
              onPressed: () {
                Navigator.pop(context, 10);
              },
            ),
          ],
        ),
      ),
    );
  }
}
