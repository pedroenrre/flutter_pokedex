// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeController on _ThemeControllerBase, Store {
  final _$darkAtom = Atom(name: '_ThemeControllerBase.dark');

  @override
  bool get dark {
    _$darkAtom.reportRead();
    return super.dark;
  }

  @override
  set dark(bool value) {
    _$darkAtom.reportWrite(value, super.dark, () {
      super.dark = value;
    });
  }

  final _$_ThemeControllerBaseActionController =
      ActionController(name: '_ThemeControllerBase');

  @override
  void setDarkMode() {
    final _$actionInfo = _$_ThemeControllerBaseActionController.startAction(
        name: '_ThemeControllerBase.setDarkMode');
    try {
      return super.setDarkMode();
    } finally {
      _$_ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dark: ${dark}
    ''';
  }
}
