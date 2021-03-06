import 'package:mobx/mobx.dart';
part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {
  @observable
  bool dark = false;

  @action
  void setDarkMode() => dark = !dark;
}
