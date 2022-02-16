class PokemonModel {
  int? id;
  String? name;
  int? baseExperience;
  int? height;
  bool? isDefault;
  int? order;
  int? weight;
  List<Abilities>? abilities;
  List<GameIndices>? gameIndices;
  List<HeldItems>? heldItems;
  String? locationAreaEncounters;
  List<Moves>? moves;
  Ability? species;
  Sprites? sprites;
  List<Stats>? stats;
  List<Types>? types;
  List<PastTypes>? pastTypes;

  PokemonModel(
      {this.id,
      this.name,
      this.baseExperience,
      this.height,
      this.isDefault,
      this.order,
      this.weight,
      this.abilities,
      this.gameIndices,
      this.heldItems,
      this.locationAreaEncounters,
      this.moves,
      this.species,
      this.sprites,
      this.stats,
      this.types,
      this.pastTypes});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    baseExperience = json['base_experience'];
    height = json['height'];
    isDefault = json['is_default'];
    order = json['order'];
    weight = json['weight'];
    if (json['abilities'] != null) {
      abilities = <Abilities>[];
      json['abilities'].forEach((v) {
        abilities!.add(Abilities.fromJson(v));
      });
    }
    if (json['game_indices'] != null) {
      gameIndices = <GameIndices>[];
      json['game_indices'].forEach((v) {
        gameIndices!.add(GameIndices.fromJson(v));
      });
    }
    if (json['held_items'] != null) {
      heldItems = <HeldItems>[];
      json['held_items'].forEach((v) {
        heldItems!.add(HeldItems.fromJson(v));
      });
    }
    locationAreaEncounters = json['location_area_encounters'];
    if (json['moves'] != null) {
      moves = <Moves>[];
      json['moves'].forEach((v) {
        moves!.add(Moves.fromJson(v));
      });
    }
    species =
        json['species'] != null ? Ability.fromJson(json['species']) : null;
    sprites =
        json['sprites'] != null ? Sprites.fromJson(json['sprites']) : null;
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(Stats.fromJson(v));
      });
    }
    if (json['types'] != null) {
      types = <Types>[];
      json['types'].forEach((v) {
        types!.add(Types.fromJson(v));
      });
    }
    if (json['past_types'] != null) {
      pastTypes = <PastTypes>[];
      json['past_types'].forEach((v) {
        pastTypes!.add(PastTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['base_experience'] = baseExperience;
    data['height'] = height;
    data['is_default'] = isDefault;
    data['order'] = order;
    data['weight'] = weight;
    if (abilities != null) {
      data['abilities'] = abilities!.map((v) => v.toJson()).toList();
    }
    if (gameIndices != null) {
      data['game_indices'] = gameIndices!.map((v) => v.toJson()).toList();
    }
    if (heldItems != null) {
      data['held_items'] = heldItems!.map((v) => v.toJson()).toList();
    }
    data['location_area_encounters'] = locationAreaEncounters;
    if (moves != null) {
      data['moves'] = moves!.map((v) => v.toJson()).toList();
    }
    if (species != null) {
      data['species'] = species!.toJson();
    }
    if (sprites != null) {
      data['sprites'] = sprites!.toJson();
    }
    if (stats != null) {
      data['stats'] = stats!.map((v) => v.toJson()).toList();
    }
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    if (pastTypes != null) {
      data['past_types'] = pastTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Abilities {
  bool? isHidden;
  int? slot;
  Ability? ability;

  Abilities({this.isHidden, this.slot, this.ability});

  Abilities.fromJson(Map<String, dynamic> json) {
    isHidden = json['is_hidden'];
    slot = json['slot'];
    ability =
        json['ability'] != null ? Ability.fromJson(json['ability']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_hidden'] = isHidden;
    data['slot'] = slot;
    if (ability != null) {
      data['ability'] = ability!.toJson();
    }
    return data;
  }
}

class Ability {
  String? name;
  String? url;

  Ability({this.name, this.url});

  Ability.fromJson(Map<String, dynamic> json) {
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

class GameIndices {
  int? gameIndex;
  Ability? version;

  GameIndices({this.gameIndex, this.version});

  GameIndices.fromJson(Map<String, dynamic> json) {
    gameIndex = json['game_index'];
    version =
        json['version'] != null ? Ability.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['game_index'] = gameIndex;
    if (version != null) {
      data['version'] = version!.toJson();
    }
    return data;
  }
}

class HeldItems {
  Ability? item;
  List<VersionDetails>? versionDetails;

  HeldItems({this.item, this.versionDetails});

  HeldItems.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null ? Ability.fromJson(json['item']) : null;
    if (json['version_details'] != null) {
      versionDetails = <VersionDetails>[];
      json['version_details'].forEach((v) {
        versionDetails!.add(VersionDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (item != null) {
      data['item'] = item!.toJson();
    }
    if (versionDetails != null) {
      data['version_details'] = versionDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VersionDetails {
  int? rarity;
  Ability? version;

  VersionDetails({this.rarity, this.version});

  VersionDetails.fromJson(Map<String, dynamic> json) {
    rarity = json['rarity'];
    version =
        json['version'] != null ? Ability.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rarity'] = rarity;
    if (version != null) {
      data['version'] = version!.toJson();
    }
    return data;
  }
}

class Moves {
  Ability? move;
  List<VersionGroupDetails>? versionGroupDetails;

  Moves({this.move, this.versionGroupDetails});

  Moves.fromJson(Map<String, dynamic> json) {
    move = json['move'] != null ? Ability.fromJson(json['move']) : null;
    if (json['version_group_details'] != null) {
      versionGroupDetails = <VersionGroupDetails>[];
      json['version_group_details'].forEach((v) {
        versionGroupDetails!.add(VersionGroupDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (move != null) {
      data['move'] = move!.toJson();
    }
    if (versionGroupDetails != null) {
      data['version_group_details'] =
          versionGroupDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VersionGroupDetails {
  int? levelLearnedAt;
  Ability? versionGroup;
  Ability? moveLearnMethod;

  VersionGroupDetails(
      {this.levelLearnedAt, this.versionGroup, this.moveLearnMethod});

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    levelLearnedAt = json['level_learned_at'];
    versionGroup = json['version_group'] != null
        ? Ability.fromJson(json['version_group'])
        : null;
    moveLearnMethod = json['move_learn_method'] != null
        ? Ability.fromJson(json['move_learn_method'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['level_learned_at'] = levelLearnedAt;
    if (versionGroup != null) {
      data['version_group'] = versionGroup!.toJson();
    }
    if (moveLearnMethod != null) {
      data['move_learn_method'] = moveLearnMethod!.toJson();
    }
    return data;
  }
}

class Sprites {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;
  Other? other;
  Versions? versions;

  Sprites(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale,
      this.other,
      this.versions});

  Sprites.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = json['back_female'];
    backShiny = json['back_shiny'];
    backShinyFemale = json['back_shiny_female'];
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
    other = json['other'] != null ? Other.fromJson(json['other']) : null;
    versions =
        json['versions'] != null ? Versions.fromJson(json['versions']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_female'] = backFemale;
    data['back_shiny'] = backShiny;
    data['back_shiny_female'] = backShinyFemale;
    data['front_default'] = frontDefault;
    data['front_female'] = frontFemale;
    data['front_shiny'] = frontShiny;
    data['front_shiny_female'] = frontShinyFemale;
    if (other != null) {
      data['other'] = other!.toJson();
    }
    if (versions != null) {
      data['versions'] = versions!.toJson();
    }
    return data;
  }
}

class Other {
  DreamWorld? dreamWorld;
  Home? home;
  OfficialArtwork? officialArtwork;

  Other({this.dreamWorld, this.home, this.officialArtwork});

  Other.fromJson(Map<String, dynamic> json) {
    dreamWorld = json['dream_world'] != null
        ? DreamWorld.fromJson(json['dream_world'])
        : null;
    home = json['home'] != null ? Home.fromJson(json['home']) : null;
    officialArtwork = json['official-artwork'] != null
        ? OfficialArtwork.fromJson(json['official-artwork'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dreamWorld != null) {
      data['dream_world'] = dreamWorld!.toJson();
    }
    if (home != null) {
      data['home'] = home!.toJson();
    }
    if (officialArtwork != null) {
      data['official-artwork'] = officialArtwork!.toJson();
    }
    return data;
  }
}

class DreamWorld {
  String? frontDefault;
  String? frontFemale;

  DreamWorld({this.frontDefault, this.frontFemale});

  DreamWorld.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    data['front_female'] = frontFemale;
    return data;
  }
}

class Home {
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  Home(
      {this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  Home.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    data['front_female'] = frontFemale;
    data['front_shiny'] = frontShiny;
    data['front_shiny_female'] = frontShinyFemale;
    return data;
  }
}

class OfficialArtwork {
  String? frontDefault;

  OfficialArtwork({this.frontDefault});

  OfficialArtwork.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    return data;
  }
}

class Versions {
  GenerationI? generationI;
  GenerationIi? generationIi;
  GenerationIii? generationIii;
  GenerationIv? generationIv;
  GenerationV? generationV;
  GenerationVi? generationVi;
  GenerationVii? generationVii;
  GenerationViii? generationViii;

  Versions(
      {this.generationI,
      this.generationIi,
      this.generationIii,
      this.generationIv,
      this.generationV,
      this.generationVi,
      this.generationVii,
      this.generationViii});

  Versions.fromJson(Map<String, dynamic> json) {
    generationI = json['generation-i'] != null
        ? GenerationI.fromJson(json['generation-i'])
        : null;
    generationIi = json['generation-ii'] != null
        ? GenerationIi.fromJson(json['generation-ii'])
        : null;
    generationIii = json['generation-iii'] != null
        ? GenerationIii.fromJson(json['generation-iii'])
        : null;
    generationIv = json['generation-iv'] != null
        ? GenerationIv.fromJson(json['generation-iv'])
        : null;
    generationV = json['generation-v'] != null
        ? GenerationV.fromJson(json['generation-v'])
        : null;
    generationVi = json['generation-vi'] != null
        ? GenerationVi.fromJson(json['generation-vi'])
        : null;
    generationVii = json['generation-vii'] != null
        ? GenerationVii.fromJson(json['generation-vii'])
        : null;
    generationViii = json['generation-viii'] != null
        ? GenerationViii.fromJson(json['generation-viii'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (generationI != null) {
      data['generation-i'] = generationI!.toJson();
    }
    if (generationIi != null) {
      data['generation-ii'] = generationIi!.toJson();
    }
    if (generationIii != null) {
      data['generation-iii'] = generationIii!.toJson();
    }
    if (generationIv != null) {
      data['generation-iv'] = generationIv!.toJson();
    }
    if (generationV != null) {
      data['generation-v'] = generationV!.toJson();
    }
    if (generationVi != null) {
      data['generation-vi'] = generationVi!.toJson();
    }
    if (generationVii != null) {
      data['generation-vii'] = generationVii!.toJson();
    }
    if (generationViii != null) {
      data['generation-viii'] = generationViii!.toJson();
    }
    return data;
  }
}

class GenerationI {
  RedBlue? redBlue;
  RedBlue? yellow;

  GenerationI({this.redBlue, this.yellow});

  GenerationI.fromJson(Map<String, dynamic> json) {
    redBlue =
        json['red-blue'] != null ? RedBlue.fromJson(json['red-blue']) : null;
    yellow = json['yellow'] != null ? RedBlue.fromJson(json['yellow']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (redBlue != null) {
      data['red-blue'] = redBlue!.toJson();
    }
    if (yellow != null) {
      data['yellow'] = yellow!.toJson();
    }
    return data;
  }
}

class RedBlue {
  String? backDefault;
  String? backGray;
  String? frontDefault;
  String? frontGray;

  RedBlue({this.backDefault, this.backGray, this.frontDefault, this.frontGray});

  RedBlue.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backGray = json['back_gray'];
    frontDefault = json['front_default'];
    frontGray = json['front_gray'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_gray'] = backGray;
    data['front_default'] = frontDefault;
    data['front_gray'] = frontGray;
    return data;
  }
}

class GenerationIi {
  Crystal? crystal;
  Crystal? gold;
  Crystal? silver;

  GenerationIi({this.crystal, this.gold, this.silver});

  GenerationIi.fromJson(Map<String, dynamic> json) {
    crystal =
        json['crystal'] != null ? Crystal.fromJson(json['crystal']) : null;
    gold = json['gold'] != null ? Crystal.fromJson(json['gold']) : null;
    silver = json['silver'] != null ? Crystal.fromJson(json['silver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (crystal != null) {
      data['crystal'] = crystal!.toJson();
    }
    if (gold != null) {
      data['gold'] = gold!.toJson();
    }
    if (silver != null) {
      data['silver'] = silver!.toJson();
    }
    return data;
  }
}

class Crystal {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  Crystal(
      {this.backDefault, this.backShiny, this.frontDefault, this.frontShiny});

  Crystal.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

class GenerationIii {
  Emerald? emerald;
  Crystal? fireredLeafgreen;
  Crystal? rubySapphire;

  GenerationIii({this.emerald, this.fireredLeafgreen, this.rubySapphire});

  GenerationIii.fromJson(Map<String, dynamic> json) {
    emerald =
        json['emerald'] != null ? Emerald.fromJson(json['emerald']) : null;
    fireredLeafgreen = json['firered-leafgreen'] != null
        ? Crystal.fromJson(json['firered-leafgreen'])
        : null;
    rubySapphire = json['ruby-sapphire'] != null
        ? Crystal.fromJson(json['ruby-sapphire'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (emerald != null) {
      data['emerald'] = emerald!.toJson();
    }
    if (fireredLeafgreen != null) {
      data['firered-leafgreen'] = fireredLeafgreen!.toJson();
    }
    if (rubySapphire != null) {
      data['ruby-sapphire'] = rubySapphire!.toJson();
    }
    return data;
  }
}

class Emerald {
  String? frontDefault;
  String? frontShiny;

  Emerald({this.frontDefault, this.frontShiny});

  Emerald.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

class GenerationIv {
  DiamondPearl? diamondPearl;
  DiamondPearl? heartgoldSoulsilver;
  DiamondPearl? platinum;

  GenerationIv({this.diamondPearl, this.heartgoldSoulsilver, this.platinum});

  GenerationIv.fromJson(Map<String, dynamic> json) {
    diamondPearl = json['diamond-pearl'] != null
        ? DiamondPearl.fromJson(json['diamond-pearl'])
        : null;
    heartgoldSoulsilver = json['heartgold-soulsilver'] != null
        ? DiamondPearl.fromJson(json['heartgold-soulsilver'])
        : null;
    platinum = json['platinum'] != null
        ? DiamondPearl.fromJson(json['platinum'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (diamondPearl != null) {
      data['diamond-pearl'] = diamondPearl!.toJson();
    }
    if (heartgoldSoulsilver != null) {
      data['heartgold-soulsilver'] = heartgoldSoulsilver!.toJson();
    }
    if (platinum != null) {
      data['platinum'] = platinum!.toJson();
    }
    return data;
  }
}

class DiamondPearl {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  DiamondPearl(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  DiamondPearl.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = json['back_female'];
    backShiny = json['back_shiny'];
    backShinyFemale = json['back_shiny_female'];
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_female'] = backFemale;
    data['back_shiny'] = backShiny;
    data['back_shiny_female'] = backShinyFemale;
    data['front_default'] = frontDefault;
    data['front_female'] = frontFemale;
    data['front_shiny'] = frontShiny;
    data['front_shiny_female'] = frontShinyFemale;
    return data;
  }
}

class GenerationV {
  BlackWhite? blackWhite;

  GenerationV({this.blackWhite});

  GenerationV.fromJson(Map<String, dynamic> json) {
    blackWhite = json['black-white'] != null
        ? BlackWhite.fromJson(json['black-white'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (blackWhite != null) {
      data['black-white'] = blackWhite!.toJson();
    }
    return data;
  }
}

class BlackWhite {
  DiamondPearl? animated;
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  BlackWhite(
      {this.animated,
      this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  BlackWhite.fromJson(Map<String, dynamic> json) {
    animated = json['animated'] != null
        ? DiamondPearl.fromJson(json['animated'])
        : null;
    backDefault = json['back_default'];
    backFemale = json['back_female'];
    backShiny = json['back_shiny'];
    backShinyFemale = json['back_shiny_female'];
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (animated != null) {
      data['animated'] = animated!.toJson();
    }
    data['back_default'] = backDefault;
    data['back_female'] = backFemale;
    data['back_shiny'] = backShiny;
    data['back_shiny_female'] = backShinyFemale;
    data['front_default'] = frontDefault;
    data['front_female'] = frontFemale;
    data['front_shiny'] = frontShiny;
    data['front_shiny_female'] = frontShinyFemale;
    return data;
  }
}

class GenerationVi {
  Home? omegarubyAlphasapphire;
  Home? xY;

  GenerationVi({this.omegarubyAlphasapphire, this.xY});

  GenerationVi.fromJson(Map<String, dynamic> json) {
    omegarubyAlphasapphire = json['omegaruby-alphasapphire'] != null
        ? Home.fromJson(json['omegaruby-alphasapphire'])
        : null;
    xY = json['x-y'] != null ? Home.fromJson(json['x-y']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (omegarubyAlphasapphire != null) {
      data['omegaruby-alphasapphire'] = omegarubyAlphasapphire!.toJson();
    }
    if (xY != null) {
      data['x-y'] = xY!.toJson();
    }
    return data;
  }
}

class GenerationVii {
  DreamWorld? icons;
  Home? ultraSunUltraMoon;

  GenerationVii({this.icons, this.ultraSunUltraMoon});

  GenerationVii.fromJson(Map<String, dynamic> json) {
    icons = json['icons'] != null ? DreamWorld.fromJson(json['icons']) : null;
    ultraSunUltraMoon = json['ultra-sun-ultra-moon'] != null
        ? Home.fromJson(json['ultra-sun-ultra-moon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icons != null) {
      data['icons'] = icons!.toJson();
    }
    if (ultraSunUltraMoon != null) {
      data['ultra-sun-ultra-moon'] = ultraSunUltraMoon!.toJson();
    }
    return data;
  }
}

class GenerationViii {
  DreamWorld? icons;

  GenerationViii({this.icons});

  GenerationViii.fromJson(Map<String, dynamic> json) {
    icons = json['icons'] != null ? DreamWorld.fromJson(json['icons']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icons != null) {
      data['icons'] = icons!.toJson();
    }
    return data;
  }
}

class Stats {
  int? baseStat;
  int? effort;
  Ability? stat;

  Stats({this.baseStat, this.effort, this.stat});

  Stats.fromJson(Map<String, dynamic> json) {
    baseStat = json['base_stat'];
    effort = json['effort'];
    stat = json['stat'] != null ? Ability.fromJson(json['stat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['base_stat'] = baseStat;
    data['effort'] = effort;
    if (stat != null) {
      data['stat'] = stat!.toJson();
    }
    return data;
  }
}

class Types {
  int? slot;
  Ability? type;

  Types({this.slot, this.type});

  Types.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    type = json['type'] != null ? Ability.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slot'] = slot;
    if (type != null) {
      data['type'] = type!.toJson();
    }
    return data;
  }
}

class PastTypes {
  Ability? generation;
  List<Types>? types;

  PastTypes({this.generation, this.types});

  PastTypes.fromJson(Map<String, dynamic> json) {
    generation = json['generation'] != null
        ? Ability.fromJson(json['generation'])
        : null;
    if (json['types'] != null) {
      types = <Types>[];
      json['types'].forEach((v) {
        types!.add(Types.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (generation != null) {
      data['generation'] = generation!.toJson();
    }
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
