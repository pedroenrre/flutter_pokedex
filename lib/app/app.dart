import 'package:flutter/material.dart';
import 'package:pokedex/resources/routes_manager.dart';
import 'package:pokedex/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      onGenerateRoute: RoutesManager.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
