import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/controllers/theme_controller.dart';
import 'package:pokedex/resources/app_images.dart';
import 'package:pokedex/resources/app_text_styles.dart';

class PokedexHeader extends StatelessWidget {
  const PokedexHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = GetIt.I.get();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(AppImages.logoPink),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                'ioasys pokédex',
                style: getPinkStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Observer(builder: (_) {
            return Switch(
                activeColor: Theme.of(context).primaryColor,
                value: themeController.dark,
                onChanged: (_) {
                  themeController.setDarkMode();
                });
          })
        ],
      ),
    );
  }
}
