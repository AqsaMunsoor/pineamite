part of '../configs.dart';

extension SuperNullableString<T> on String? {
  bool get available => this != null && this!.isNotEmpty;
}

extension SuperString<T> on String {
  Future<void> pushReplace(BuildContext context, {Object? arguments}) =>
      Navigator.pushReplacementNamed(context, this, arguments: arguments);
}
