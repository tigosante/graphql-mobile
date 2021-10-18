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
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.HomeScreen(key: args.key));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [_i2.RouteConfig(Home.name, path: '/')];
}

/// generated route for [_i1.HomeScreen]
class Home extends _i2.PageRouteInfo<HomeArgs> {
  Home({_i3.Key? key}) : super(name, path: '/', args: HomeArgs(key: key));

  static const String name = 'Home';
}

class HomeArgs {
  const HomeArgs({this.key});

  final _i3.Key? key;
}
