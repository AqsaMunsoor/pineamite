import 'package:flutter/material.dart';
import 'package:pineamite/ui/screens/home/home.dart';

import 'routes.dart';

final navigator = GlobalKey<NavigatorState>();
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

final appRoutes = {AppRoutes.home: (_) => const HomeScreen()};

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  final route = switch (settings.name) {
    AppRoutes.home => FadeRoute(settings: settings, child: const HomeScreen()),

    _ => null,
  };
  return route;
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;

  @override
  final RouteSettings settings;

  FadeRoute({required this.child, required this.settings})
    : super(
        settings: settings,
        pageBuilder: (context, ani1, ani2) => child,
        transitionsBuilder: (context, ani1, ani2, child) {
          return FadeTransition(opacity: ani1, child: child);
        },
      );
}
