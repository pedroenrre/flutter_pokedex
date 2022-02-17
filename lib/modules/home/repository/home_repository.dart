import 'package:dio/dio.dart';

class HomeRepository {
  final Dio dio;
  HomeRepository(this.dio);

  Future<Map<String, dynamic>?> getData() async {
    try {
      final response = await dio.get('https://pokeapi.co/api/v2/pokemon',
          queryParameters: {"limit": 21, "offset": 0});
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
