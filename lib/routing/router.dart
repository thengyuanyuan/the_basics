import 'package:flutter/material.dart';

import '../views/about/about_view.dart';
import '../views/episodes/episodes_view.dart';
import '../views/home/home_view.dart';
import 'routes_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  debugPrint('generateRoute: ${settings.name}');
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(const HomeView());
    case episodesRoute:
      return _getPageRoute(const EpisodesView());
    case aboutRoute:
      return _getPageRoute(const AboutView());
    default:
      return _getPageRoute(const HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  // return MaterialPageRoute(
  //   builder: (context) => child,
  // );
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
