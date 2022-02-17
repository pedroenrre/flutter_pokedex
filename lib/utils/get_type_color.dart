import 'package:flutter/material.dart';
import 'package:pokedex/resources/app_colors.dart';

Color getTypeColor(String type) {
  switch (type) {
    case 'normal':
      return AppColors.normal;
    case 'fighting':
      return AppColors.fighting;
    case 'flying':
      return AppColors.flying;
    case 'poison':
      return AppColors.poison;
    case 'ground':
      return AppColors.normal;
    case 'rock':
      return AppColors.rock;
    case 'bug':
      return AppColors.bug;
    case 'ghost':
      return AppColors.ghost;
    case 'steel':
      return AppColors.steel;
    case 'fire':
      return AppColors.fire;
    case 'water':
      return AppColors.water;
    case 'grass':
      return AppColors.grass;
    case 'electric':
      return AppColors.electric;
    case 'ice':
      return AppColors.ice;
    case 'dragon':
      return AppColors.dragon;
    case 'dark':
      return AppColors.normal;
    case 'unknown':
      return AppColors.normal;
    case 'shadow':
      return AppColors.normal;
    default:
      return AppColors.normal;
  }
}
