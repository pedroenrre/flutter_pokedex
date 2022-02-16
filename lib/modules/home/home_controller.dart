import 'package:pokedex/modules/home/repository/home_repository.dart';
import 'package:pokedex/modules/home/store/home_store.dart';

class HomeController {
  final HomeStore store;
  final HomeRepository repository;
  HomeController(this.store, this.repository) {
    getData();
  }

  void getData() async {
    final data = await repository.getData();
    if (data != null) {
      store.setPokemons(data);
    }
    store.setLoading(false);
  }

  void getMoreData() async {
    if (store.dataController.next != null) {
      final data = await repository.getMoreData(store.dataController.next!);
      if (data != null) {
        store.addMorePokemons(data);
      }
    }
  }
}
