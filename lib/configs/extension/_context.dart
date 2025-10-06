part of '../configs.dart';

extension SuperContext on BuildContext {
  String? get currentPath => ModalRoute.of(this)!.settings.name;
  bool get canPop => Navigator.canPop(this);

  double bottomSafe() {
    final view = MediaQueryData.fromView(View.of(this));
    final height = view.padding.bottom;
    return height;
  }

  double topSafe() {
    final view = MediaQueryData.fromView(View.of(this));
    final height = view.padding.top;
    return height;
  }
}
