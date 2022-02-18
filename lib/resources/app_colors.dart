import 'package:flutter/material.dart';

class AppColors {
  static Color primary = HexColor.fromHex("#EC0344");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color darkBackground = HexColor.fromHex("#212121");
  static Color content = HexColor.fromHex("#666666");
  static Color ligthContent = HexColor.fromHex("#BDBDBD");

  //Pokemon Type Colors
  static Color normal = HexColor.fromHex("#AAA67F");
  static Color grass = HexColor.fromHex("#74CB48");
  static Color fire = HexColor.fromHex("#F57D31");
  static Color water = HexColor.fromHex("#6493EB");
  static Color bug = HexColor.fromHex("#A7B723");
  static Color electric = HexColor.fromHex("#F9CF30");
  static Color ghost = HexColor.fromHex("#70559B");
  static Color psychic = HexColor.fromHex("#FB5584");
  static Color steel = HexColor.fromHex("#B7B9D0");
  static Color flying = HexColor.fromHex("#A890F0");
  static Color fighting = HexColor.fromHex("#C03028");
  static Color rock = HexColor.fromHex("#B8A038");
  static Color ice = HexColor.fromHex("#98D8D8");
  static Color dragon = HexColor.fromHex("#7038F8");
  static Color poison = HexColor.fromHex("#A040A0");
  static Color ground = HexColor.fromHex("#E0C068");
  static Color fairy = HexColor.fromHex("#EE99AC");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
