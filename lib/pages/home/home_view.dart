import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/components/pokedex_header.dart';
import 'package:pokedex/pages/home/components/custom_text_field.dart';
import 'package:pokedex/components/pokemon_list.dart';
import 'package:pokedex/pages/home/home_controller.dart';
import 'components/custom_icon_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController controller = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Observer(
          builder: (_) {
            return controller.store.loading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        const PokedexHeader(),
                        CustomTextField(
                          onChanged: controller.filterData,
                          hint: 'Buscar pokemon',
                          suffix: CustomIconButton(
                            radius: 32,
                            iconData: Icons.search,
                            onTap: () {},
                          ),
                        ),
                        PokemonList(
                          pokemons: controller.store.pokemonsFiltered,
                        ),
                        const SizedBox(height: 20),
                        Visibility(
                          visible: controller.store.pokemonsFiltered.isNotEmpty,
                          child: controller.store.loadingMoreData
                              ? const CircularProgressIndicator()
                              : GestureDetector(
                                  onTap: controller.getMoreData,
                                  child: const Icon(
                                    Icons.expand_more_outlined,
                                    size: 48,
                                  ),
                                ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
