import 'package:auto_route/annotations.dart';
import 'package:graphql_mobile/presetation/screens/home/home.screen.dart';

mixin AppRouterAuths {
  static const List<AutoRoute> routes = [
    AutoRoute(
      page: HomeScreen,
      initial: true,
    ),
  ];
}
