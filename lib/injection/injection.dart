import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/controllers/theme_controller.dart';
import 'package:pokedex/pages/home/home_controller.dart';
import 'package:pokedex/pages/home/repository/home_repository.dart';
import 'package:pokedex/pages/home/store/home_store.dart';
import 'package:pokedex/services/pokemon_service.dart';

Future<void> configureDependencies() async {
  GetIt.I.registerSingleton(ThemeController());
  GetIt.I.registerFactory(() => Dio());
  GetIt.I.registerFactory(() => PokemonService(GetIt.I.get()));
  GetIt.I.registerFactory(() => HomeStore());
  GetIt.I.registerFactory(() => HomeRepository(GetIt.I.get()));
  GetIt.I.registerFactory(() => HomeController(GetIt.I.get(), GetIt.I.get()));
}
