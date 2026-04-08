import 'package:flutter/material.dart';
import 'package:flutter_application_7/widget/product_tile.dart';

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
            return ProductTile(nome: produtos[index]);
          },
        ),
      ),
    );
  }
}
