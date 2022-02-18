// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$loadingAtom = Atom(name: '_HomeStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$loadingMoreDataAtom = Atom(name: '_HomeStoreBase.loadingMoreData');

  @override
  bool get loadingMoreData {
    _$loadingMoreDataAtom.reportRead();
    return super.loadingMoreData;
  }

  @override
  set loadingMoreData(bool value) {
    _$loadingMoreDataAtom.reportWrite(value, super.loadingMoreData, () {
      super.loadingMoreData = value;
    });
  }

  final _$dataControllerAtom = Atom(name: '_HomeStoreBase.dataController');

  @override
  DataModel get dataController {
    _$dataControllerAtom.reportRead();
    return super.dataController;
  }

  @override
  set dataController(DataModel value) {
    _$dataControllerAtom.reportWrite(value, super.dataController, () {
      super.dataController = value;
    });
  }

  final _$setPokemonsAsyncAction = AsyncAction('_HomeStoreBase.setPokemons');

  @override
  Future<void> setPokemons(Map<String, dynamic> value) {
    return _$setPokemonsAsyncAction.run(() => super.setPokemons(value));
  }

  final _$addMorePokemonsAsyncAction =
      AsyncAction('_HomeStoreBase.addMorePokemons');

  @override
  Future<void> addMorePokemons(Map<String, dynamic> value) {
    return _$addMorePokemonsAsyncAction.run(() => super.addMorePokemons(value));
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoadingMoreData(bool value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setLoadingMoreData');
    try {
      return super.setLoadingMoreData(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDataController(Map<String, dynamic> value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setDataController');
    try {
      return super.setDataController(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void filterData(String text) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.filterData');
    try {
      return super.filterData(text);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetFilterData() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.resetFilterData');
    try {
      return super.resetFilterData();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
loadingMoreData: ${loadingMoreData},
dataController: ${dataController}
    ''';
  }
}
