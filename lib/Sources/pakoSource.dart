import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:pakodex/Models/pokeModel.dart';

class MySource {
  static const String _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
  static Future<List<Pokemon>> getPokemons() async {
    List<Pokemon> pokemons = [];
    var response = await Dio().get(_url);
    var myData = jsonDecode(response.data)["pokemon"];
    if (myData is List) {
      pokemons = myData.map((e) => Pokemon.fromJson(e)).toList();
    }
    
    return pokemons;
  }
}
