import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeApi {
  static const String _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<Pokemon>> getPokemonData() async {
    List<Pokemon> _list = [];

    var result = await Dio().get(_url);
    var pokeList = jsonDecode(result.data)['pokemon'];

    //  debugPrint(pokeList['pokemon'].toString());

    if (pokeList is List) {
      _list = pokeList.map((e) => Pokemon.fromJson(e)).toList();
    } else {
      return [];
    }

    //debugPrint(_list.length.toString());

    return _list;
  }
}
