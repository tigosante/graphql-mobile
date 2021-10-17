import 'package:graphql_mobile/core/dependency_injection/dependency.injection.dart';
import 'package:graphql_mobile/core/router/app.router.gr.dart';

mixin DIHelper {
  static T get<T extends Object>() => DependencyInjection.instance.get<T>();
  static AppRouter get router => DependencyInjection.router;
}
