import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/models/pokemon_list_model.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/services/pokemon_service.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  bool loading = true;

  @action
  void setLoading(bool value) => loading = value;

  @observable
  bool loadingMoreData = false;

  @action
  void setLoadingMoreData(bool value) => loadingMoreData = value;

  @observable
  DataModel dataController = DataModel();

  @action
  void setDataController(Map<String, dynamic> value) =>
      dataController = DataModel.fromJson(value);

  ObservableList<PokemonListModel> pokemons =
      ObservableList<PokemonListModel>();

  ObservableList<PokemonListModel> pokemonsFiltered =
      ObservableList<PokemonListModel>();

  @action
  Future<void> setPokemons(Map<String, dynamic> value) async {
    pokemons.clear();
    setDataController(value);
    value['results'].forEach(
      (v) {
        pokemons.add(PokemonListModel.fromJson(v));
      },
    );
    final PokemonService pokeService = GetIt.I.get();
    for (int i = 0; i < pokemons.length; i++) {
      pokemons[i].pokemon = PokemonModel.fromJson(
        await pokeService.getPokemon(pokemons[i].url!),
      );
    }
    pokemonsFiltered.addAll(pokemons);
  }

  @action
  Future<void> addMorePokemons(Map<String, dynamic> value) async {
    setDataController(value);
    List<PokemonListModel> tmp = [];
    value['results'].forEach(
      (v) {
        tmp.add(PokemonListModel.fromJson(v));
      },
    );
    final PokemonService pokeService = GetIt.I.get();
    for (int i = 0; i < tmp.length; i++) {
      tmp[i].pokemon = PokemonModel.fromJson(
        await pokeService.getPokemon(tmp[i].url!),
      );
    }
    pokemonsFiltered.addAll(tmp);
    pokemons.addAll(tmp);
  }

  @action
  void filterData(String text) {
    List<PokemonListModel> tmp =
        [...pokemons].where((element) => element.name!.contains(text)).toList();
    pokemonsFiltered.clear();
    pokemonsFiltered.addAll(tmp);
  }

  @action
  void resetFilterData() {
    pokemonsFiltered.clear();
    pokemonsFiltered.addAll(pokemons);
  }
}
