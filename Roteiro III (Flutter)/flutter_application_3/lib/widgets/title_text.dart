import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomText extends StatelessWidget {
  final String texto;

  const CustomText({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
