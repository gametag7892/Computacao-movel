import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String nome;
  final String status;

  const ProductTile({super.key, required this.nome, required this.status});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.shopping_bag, color: Colors.blue),
      title: Text(
        nome,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(status),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
