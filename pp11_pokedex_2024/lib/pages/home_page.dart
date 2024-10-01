import 'dart:convert';

import 'package:app11_pokedex_2024/models/pokemon_model.dart';
import 'package:app11_pokedex_2024/ui/widgets/item_pokemon_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pokemons = [];

  List<PokemonModel> pokemonModel = [];

  @override
  void initState() {
    super.initState();
    getDataPokemon();
  }

  getDataPokemon() async {
    Uri _uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      //pokemons = myMap["pokemon"];
      pokemonModel = myMap["pokemon"]
          .map<PokemonModel>((e) => PokemonModel.fromJson(e))
          .toList();
      //print(pokemonModel);
      setState(() {});
      //print(pokemons[0]["img"]);
      //pokemons.forEach((e) {
      //  print(e["name"]);
      //});
    }
  }

  @override
  Widget build(BuildContext context) {
    //getDataPokemon();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pokedex",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 14.0,
                ),
                GridView.count(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.3,
                  children: pokemonModel
                      .map(
                        (e) => ItemPokemonWidget(
                          name: e.name,
                          img: e.img,
                          type: e.type,
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
