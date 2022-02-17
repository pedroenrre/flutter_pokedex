import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/controllers/theme_controller.dart';
import 'package:pokedex/resources/routes_manager.dart';
import 'package:pokedex/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = GetIt.I.get();
    return Observer(builder: (_) {
      return MaterialApp(
        title: 'Pokédex',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RoutesManager.getRoute,
        initialRoute: Routes.splashRoute,
        theme: themeController.dark ? getDarkTheme() : getLightTheme(),
      );
    });
  }
}
