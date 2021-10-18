import 'package:get_it/get_it.dart';
import 'package:graphql_mobile/core/dependency_injection/injectors/injection.clients.dart';
import 'package:graphql_mobile/core/dependency_injection/injectors/injection.interface.dart';
import 'package:graphql_mobile/core/dependency_injection/injectors/injection.repositories.dart';
import 'package:graphql_mobile/core/dependency_injection/injectors/injection.services.dart';
import 'package:graphql_mobile/core/router/app.router.gr.dart';

final _di = GetIt.instance;

mixin DependencyInjection {
  static GetIt get instance => _di;
  static late final AppRouter router;

  static List<InjectionInterface> get injectables => [
        InjectionClients(_di),
        InjectionRepositoiry(_di),
        InjectionServices(_di),
      ];

  static Future<void> init({required AppRouter routerInject}) async {
    router = routerInject;

    for (var e in injectables) {
      await e.inject();
    }
  }
}
