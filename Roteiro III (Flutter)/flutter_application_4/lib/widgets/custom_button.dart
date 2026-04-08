import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomButton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  final Color cor;
  const CustomButton({
    super.key,
    required this.texto,
    required this.onPressed,
    this.cor = Colors.blue,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: cor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Text(texto, style: const TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
