import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String nome;
  const ProductTile({super.key, required this.nome});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(nome),
    );
  }
}
