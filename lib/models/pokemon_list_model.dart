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
  PokemonModel? pokemon;

  PokemonListModel({this.name, this.url, this.pokemon});

  PokemonListModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
