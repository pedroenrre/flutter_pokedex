import 'package:dio/dio.dart';

class HomeRepository {
  final Dio dio;
  HomeRepository(this.dio);

  Future<Map<String, dynamic>?> getData() async {
    try {
      final response = await dio.get('https://pokeapi.co/api/v2/pokemon',
          queryParameters: {"limit": 21, "offset": 0});

      // final PokemonService pokeService = GetIt.I.get();
      // final response = await pokeService.getPokemon(newPoke.url!);
      // if (response != null) {
      //   PokemonModel pokeDetails = PokemonModel.fromJson(response);
      //   newPoke.pokemon = pokeDetails;
      // }
      return response.data;
    } catch (e) {
      return null;
    }
  }

  Future<Map<String, dynamic>?> getMoreData(String url) async {
    try {
      final response = await dio.get(url);
      return response.data;
    } catch (e) {
      return null;
    }
  }
}
