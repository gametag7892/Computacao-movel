import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> _cart = [];
  final List<String> _products = ["Produto A", "Produto B", "Produto C"];

  @override
  void initState() {
    super.initState();
    _loadCart();
  }

  _loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _cart = prefs.getStringList('cart_items') ?? [];
    });
  }

  _addToCart(String item) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => _cart.add(item));
    await prefs.setStringList('cart_items', _cart);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Carrinho")),
      body: Column(
        children: [
          ..._products.map((p) => ListTile(
            title: Text(p),
            trailing: ElevatedButton(
              onPressed: () => _addToCart(p),
              child: const Text("Adicionar"),
            ),
          )),
          const Divider(),
          const Text("Itens Salvos:"),
          Expanded(
            child: ListView.builder(
              itemCount: _cart.length,
              itemBuilder: (context, i) => ListTile(title: Text(_cart[i])),
            ),
          ),
        ],
      ),
    );
  }
}