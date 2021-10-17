import 'package:flutter/material.dart';
import 'package:graphql_mobile/core/dependency_injection/dependency.injection.dart';
import 'package:graphql_mobile/core/dependency_injection/di.helper.dart';
import 'package:graphql_mobile/core/router/app.router.gr.dart';

Future<void> main() async {
  final _appRouter = AppRouter();
  await DependencyInjection.init(routerInject: _appRouter);

  runApp(const GraphQLProject());
}

class GraphQLProject extends StatelessWidget {
  const GraphQLProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GraphQl Project',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routerDelegate: DIHelper.router.delegate(),
      routeInformationParser: DIHelper.router.defaultRouteParser(),
    );
  }
}
