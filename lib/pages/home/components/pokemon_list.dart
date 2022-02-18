import 'package:flutter/material.dart';
import '../home_controller.dart';
import 'pokemon_item.dart';
import 'pokemon_not_found.dart';

class PokemonList extends StatelessWidget {
  final HomeController controller;
  const PokemonList({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (controller.store.pokemonsFiltered.isEmpty) {
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
      itemCount: controller.store.pokemonsFiltered.length,
      itemBuilder: (BuildContext ctx, index) {
        final item = controller.store.pokemonsFiltered[index].pokemon;
        return PokemonItem(
          item: item!,
          name: controller.store.pokemonsFiltered[index].pokemon!.name,
        );
      },
    );
  }
}
