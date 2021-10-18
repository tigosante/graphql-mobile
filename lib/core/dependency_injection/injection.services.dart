import 'package:get_it/get_it.dart';
import 'package:graphql_mobile/core/dependency_injection/injection.interface.dart';
import 'package:graphql_mobile/domain/services/user.service.dart';

class InjectionServices implements InjectionInterface {
  InjectionServices(GetIt di) : _di = di;

  final GetIt _di;

  @override
  Future<void> inject() async {
    _di.registerLazySingleton<UserService>(() => UserService(repository: _di()));
  }
}
