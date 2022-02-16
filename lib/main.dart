import 'package:flutter/material.dart';
import 'app/app.dart';
import 'injection/injection.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}
