import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(texto: "Insira o texto aqui")
          ],
        ),
      ),
    );
  }
}
