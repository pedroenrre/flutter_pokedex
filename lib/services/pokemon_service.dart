import 'package:dio/dio.dart';

class PokemonService {
  final Dio dio;
  PokemonService(this.dio);

  Future<Map<String, dynamic>> getPokemon(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
