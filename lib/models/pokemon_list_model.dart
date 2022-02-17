import 'package:pokedex/models/pokemon_model.dart';

class DataModel {
  int? count;
  String? next;
  String? previous;

  DataModel({this.count, this.next, this.previous});

  DataModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    // if (json['results'] != null) {
    //   results = <Results>[];
    //   json['results'].forEach((v) {
    //     results!.add(Results.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    // if (results != null) {
    //   data['results'] = results!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class PokemonListModel {
  String? name;
  String? url;
  String? pokemonImage;
  PokemonModel? pokemon;

  PokemonListModel({this.name, this.url, this.pokemonImage, this.pokemon});

  PokemonListModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    final splitedUrl = url!.split('/');
    pokemonImage =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${splitedUrl[splitedUrl.length - 2]}.svg';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
