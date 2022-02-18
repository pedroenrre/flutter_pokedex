import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_list_model.dart';
import 'pokemon_item.dart';
import 'pokemon_not_found.dart';

class PokemonList extends StatelessWidget {
  final List<PokemonListModel> pokemons;
  const PokemonList({required this.pokemons, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (pokemons.isEmpty) {
      return const PokemonNotFound();
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const PageScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
        childAspectRatio: 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: pokemons.length,
      itemBuilder: (BuildContext ctx, index) {
        final item = pokemons[index].pokemon;
        return PokemonItem(
          item: item!,
          name: item.name,
        );
      },
    );
  }
}
