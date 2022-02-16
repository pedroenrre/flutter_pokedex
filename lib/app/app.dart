import 'package:flutter/material.dart';
import 'package:pokedex/resources/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pokédex',
      onGenerateRoute: RoutesManager.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
