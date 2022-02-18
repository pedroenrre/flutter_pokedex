import 'package:flutter/material.dart';
import 'package:pokedex/resources/app_text_styles.dart';

class PokemonNotFound extends StatelessWidget {
  const PokemonNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Ops',
              style: getGreyStyle(
                fontSize: 200,
                fontWeight: FontWeight.w700,
                isDark: false,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Esse pokemon não está aqui ;(',
              style: getGreyStyle(
                fontSize: 200,
                fontWeight: FontWeight.w700,
                isDark: false,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
