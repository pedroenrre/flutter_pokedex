import 'package:flutter/widgets.dart';
import 'package:pokedex/modules/home/repository/home_repository.dart';
import 'package:pokedex/modules/home/store/home_store.dart';

class HomeController {
  final HomeStore store;
  final HomeRepository repository;
  final TextEditingController textController = TextEditingController();
  HomeController(this.store, this.repository) {
    getData();
  }

  void getData() async {
    final data = await repository.getData();
    if (data != null) {
      await store.setPokemons(data);
    }
    store.setLoading(false);
  }

  void getMoreData() async {
    store.setLoadingMoreData(true);
    if (store.dataController.next != null) {
      final data = await repository.getMoreData(store.dataController.next!);
      if (data != null) {
        await store.addMorePokemons(data);
      }
    }
    store.setLoadingMoreData(false);
  }

  void filterData(String text) async {
    if (text.isNotEmpty) {
      store.filterData(text);
    } else {
      store.resetFilterData();
    }
    print('pokemon: ${store.pokemons.length}');
    print('pokemon: ${store.pokemonsFiltered.length}');
  }
}
