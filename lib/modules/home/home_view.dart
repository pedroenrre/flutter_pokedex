import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/modules/home/components/custom_text_field.dart';
import 'package:pokedex/modules/home/components/pokedex_header.dart';
import 'package:pokedex/modules/home/components/pokemon_item.dart';
import 'package:pokedex/modules/home/home_controller.dart';
import 'package:pokedex/resources/app_images.dart';
import 'package:pokedex/resources/app_text_styles.dart';
import 'package:pokedex/utils/get_type_color.dart';
import 'package:shimmer/shimmer.dart';

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
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const PageScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                MediaQuery.of(context).size.width / 3,
                            childAspectRatio: 1,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemCount: controller.store.pokemonsFiltered.length,
                          itemBuilder: (BuildContext ctx, index) {
                            final item = controller
                                .store.pokemonsFiltered[index].pokemon;
                            return PokemonItem(
                              item: item!,
                              name:
                                  controller.store.pokemonsFiltered[index].name,
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        controller.store.loadingMoreData
                            ? const CircularProgressIndicator()
                            : GestureDetector(
                                onTap: controller.getMoreData,
                                child: const Icon(
                                  Icons.expand_more_outlined,
                                  size: 48,
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
