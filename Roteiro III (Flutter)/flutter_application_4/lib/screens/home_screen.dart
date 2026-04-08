import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/product_screen.dart';
import 'package:flutter_application_4/screens/profile_screen.dart';
import 'package:flutter_application_4/widgets/custom_button.dart';

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
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen())
              ), 
              child: Text("Ir para perfil")
            ),

            SizedBox(height: 20),

            CustomButton(
              texto: "Ir para produtos",
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductScreen())
              ),  
            )

          ],
        ),
      ),
    );
  }
}
