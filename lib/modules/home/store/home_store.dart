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
  DataModel dataController = DataModel();

  @action
  void setDataController(Map<String, dynamic> value) =>
      dataController = DataModel.fromJson(value);

  ObservableList<PokemonListModel> pokemons =
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
  }

  @action
  Future<void> addMorePokemons(Map<String, dynamic> value) async {
    setDataController(value);
    final initialLength = pokemons.length - 1;
    value['results'].forEach(
      (v) {
        pokemons.add(PokemonListModel.fromJson(v));
      },
    );
    final PokemonService pokeService = GetIt.I.get();
    for (int i = initialLength; i < pokemons.length; i++) {
      pokemons[i].pokemon = PokemonModel.fromJson(
        await pokeService.getPokemon(pokemons[i].url!),
      );
    }
  }
}
