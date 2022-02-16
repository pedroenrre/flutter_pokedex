import 'package:mobx/mobx.dart';
import 'package:pokedex/models/pokemon_list_model.dart';
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
  void setPokemons(Map<String, dynamic> value) {
    pokemons.clear();
    setDataController(value);
    value['results'].forEach(
      (v) {
        pokemons.add(PokemonListModel.fromJson(v));
      },
    );
  }

  @action
  void addMorePokemons(Map<String, dynamic> value) {
    setDataController(value);
    value['results'].forEach(
      (v) {
        pokemons.add(PokemonListModel.fromJson(v));
      },
    );
  }
}
