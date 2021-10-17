import 'package:auto_route/annotations.dart';
import 'package:graphql_mobile/core/router/auths/app.router.auths.dart';
import 'package:graphql_mobile/core/router/no_auths/app.router.no.auths.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,',
  routes: <AutoRoute>[
    ...AppRouterAuths.routes,
    ...AppRouterNoAuths.routes,
  ],
)
class $AppRouter {}
