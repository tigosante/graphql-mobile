// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:graphql_mobile/presetation/screens/home/home.screen.dart'
    as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [_i2.RouteConfig(Home.name, path: '/')];
}

/// generated route for [_i1.HomeScreen]
class Home extends _i2.PageRouteInfo<void> {
  const Home() : super(name, path: '/');

  static const String name = 'Home';
}
