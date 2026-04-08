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
        child: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(produtos[index]));
          },
        ),
      ),
    );
  }
}
