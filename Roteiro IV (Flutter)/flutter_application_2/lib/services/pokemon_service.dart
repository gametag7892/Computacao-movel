import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon.dart';

class PokemonService {
  Future<Pokemon> fetchPokemon(String term) async {
    final url = Uri.parse(
      'https://pokeapi.co/api/v2/pokemon/${term.toLowerCase()}',
    );
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Pokemon.fromJson(data);
    } else {
      throw Exception('Pokémon não encontrado.');
    }
  }
}
