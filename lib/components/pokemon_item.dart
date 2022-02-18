import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/resources/app_text_styles.dart';
import 'package:pokedex/utils/get_type_color.dart';
import 'package:shimmer/shimmer.dart';

class PokemonItem extends StatelessWidget {
  final PokemonModel item;
  final String? name;
  const PokemonItem({Key? key, required this.item, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: getTypeColor(item.types?[0].type?.name ?? ''),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 4),
              child: Text(
                '#${item.id}',
                style: TextStyle(
                    color: getTypeColor(item.types?[0].type?.name ?? '')),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Center(
                child: SvgPicture.network(
                  item.sprites?.other?.dreamWorld?.frontDefault ??
                      item.sprites!.frontDefault!,
                  placeholderBuilder: (context) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              color: getTypeColor(item.types?[0].type?.name ?? ''),
              border: Border.all(
                width: 0,
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            child: Text(
              name ?? 'Não informado',
              style: getWhiteStyle(),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
