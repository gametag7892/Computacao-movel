import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final List<String> produtos = [
    "Arroz",
    "Feijão",
    "Macarrão",
    "Leite",
    "Café",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Produtos")),
      body: Center(
        child: ListView(
          children: [
            ListTile(title: Text(produtos[0])),
            ListTile(title: Text(produtos[1])),
            ListTile(title: Text(produtos[2])),
            ListTile(title: Text(produtos[3])),
            ListTile(title: Text(produtos[4])),
          ],
        ),
      ),
    );
  }
}
